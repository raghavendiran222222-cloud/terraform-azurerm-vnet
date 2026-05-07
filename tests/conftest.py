import pytest
import tftest

@pytest.fixture(scope="module")
def plan():
    tf = tftest.TerraformTest('examples/basic')
    tf.setup()
    tf.init()
    return tf.plan(output=True)
