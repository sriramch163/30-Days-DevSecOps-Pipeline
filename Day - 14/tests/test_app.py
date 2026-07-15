from app.app import app

client = app.test_client()

def test_home():
    assert client.get("/").status_code == 200

def test_health():
    assert client.get("/health").status_code == 200

def test_library():
    assert client.get("/library").status_code == 200
