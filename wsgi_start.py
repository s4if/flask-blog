from flaskdemo import create_app
fd_app = create_app()

if __name__ == "__main__":
    from waitress import serve
    serve(fd_app, listen='*:8080')
