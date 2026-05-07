def test_vnet_resource(plan):
    resources = [r for r in plan.root_module['resources'] if r['type'] == 'azurerm_virtual_network']
    assert len(resources) == 1
    assert resources[0]['change']['actions'] == ['create']
    assert 'name' in resources[0]['values']
    assert 'location' in resources[0]['values']

def test_vnet_outputs(plan):
    assert 'vnet_id' in plan.outputs
    assert 'vnet_name' in plan.outputs
