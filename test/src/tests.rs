use std::fs::{canonicalize, read_to_string};
use std::path::PathBuf;
use std::str::FromStr;
use hcl::{Body,BlockLabel};

/// Tests that `exports/module_outputs.tf` export bindings are directly to the right output from the
/// module.
///
/// For instance, an output named `network_id` must point to `module.network.network_id`.
#[test]
fn test_valid_export_outputs() {
    let p = canonicalize(PathBuf::from_str("../exports/module_outputs.tf").unwrap()).unwrap();

    let data = read_to_string(&p).unwrap();
    let parsed: Body = hcl::from_str(&data).unwrap();

    // test that each output's value attribute is the same attribute from the source module
    for block in parsed.blocks() {
        if block.identifier.as_str() == "output" {
            let output_name = match block.labels.get(0).unwrap() {
                BlockLabel::String(s) => s.clone(),
                BlockLabel::Identifier(i) => i.as_str().to_string(),
            };

            let attr = block.body.attributes().find(|a| a.key.as_str() == "value").unwrap();

            let attr_value = format!("{}", attr.expr);

            assert_eq!(format!("module.network.{}", output_name), attr_value);
        }
    }
}