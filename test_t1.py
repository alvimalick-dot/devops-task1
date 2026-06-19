from flask import Flask

app = Flask(__name__)

@app.route('/health')
def health():
    return {'status': 'ok'}, 200

# Make sure this function has NO spaces before "def"
def test_health():
    client = app.test_client()
    response = client.get('/health')
    assert response.status_code == 404