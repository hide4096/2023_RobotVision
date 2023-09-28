# 2023_RobotVision
千葉工業大学未来ロボティクス学科の講義、ロボットビジョンで使う環境を一発で構築するDockerfileです

## Installation

このリポジトリを適当なところに展開して、中のDockerfileをビルドするだけ

```
git clone https://github.com/hide4096/2023_RobotVision.git
cd 2023_RobotVision
docker build -t robotvision .
```

## Usage

下のコマンド実行して表示されたリンク踏むとJupyterNoteBook開くよ
/path/to/saveのところにホストのコンピュータのパスを指定すると、そこにnotebookが保存される

'''
docker run -it -p 8888:8888 -v /path/to/save:/opt/notebooks robotdesign
'''

こんなログが出るので`Or copy and paste one of these URLs`下のリンク押す

```
[I 2023-09-28 02:33:57.658 ServerApp] Package notebook took 0.0000s to import
[I 2023-09-28 02:33:57.673 ServerApp] Package jupyter_lsp took 0.0139s to import
[W 2023-09-28 02:33:57.673 ServerApp] A `_jupyter_server_extension_points` function was not found in jupyter_lsp. Instead, a `_jupyter_server_extension_paths` function was found and will be used for now. This function name will be deprecated in future releases of Jupyter Server.
[I 2023-09-28 02:33:57.679 ServerApp] Package jupyter_server_terminals took 0.0057s to import
[I 2023-09-28 02:33:57.679 ServerApp] Package jupyterlab took 0.0000s to import
[I 2023-09-28 02:33:57.717 ServerApp] Package notebook_shim took 0.0000s to import
[W 2023-09-28 02:33:57.717 ServerApp] A `_jupyter_server_extension_points` function was not found in notebook_shim. Instead, a `_jupyter_server_extension_paths` function was found and will be used for now. This function name will be deprecated in future releases of Jupyter Server.
[I 2023-09-28 02:33:57.718 ServerApp] jupyter_lsp | extension was successfully linked.
[I 2023-09-28 02:33:57.724 ServerApp] jupyter_server_terminals | extension was successfully linked.
[I 2023-09-28 02:33:57.732 ServerApp] jupyterlab | extension was successfully linked.
[I 2023-09-28 02:33:57.739 ServerApp] notebook | extension was successfully linked.
[I 2023-09-28 02:33:57.740 ServerApp] Writing Jupyter server cookie secret to /root/.local/share/jupyter/runtime/jupyter_cookie_secret
[I 2023-09-28 02:33:58.041 ServerApp] notebook_shim | extension was successfully linked.
[W 2023-09-28 02:33:58.060 ServerApp] WARNING: The Jupyter server is listening on all IP addresses and not using encryption. This is not recommended.
[I 2023-09-28 02:33:58.061 ServerApp] notebook_shim | extension was successfully loaded.
[I 2023-09-28 02:33:58.064 ServerApp] jupyter_lsp | extension was successfully loaded.
[I 2023-09-28 02:33:58.065 ServerApp] jupyter_server_terminals | extension was successfully loaded.
[I 2023-09-28 02:33:58.067 LabApp] JupyterLab extension loaded from /opt/conda/envs/py310/lib/python3.10/site-packages/jupyterlab
[I 2023-09-28 02:33:58.067 LabApp] JupyterLab application directory is /opt/conda/envs/py310/share/jupyter/lab
[I 2023-09-28 02:33:58.068 LabApp] Extension Manager is 'pypi'.
[I 2023-09-28 02:33:58.072 ServerApp] jupyterlab | extension was successfully loaded.
[I 2023-09-28 02:33:58.079 ServerApp] notebook | extension was successfully loaded.
[I 2023-09-28 02:33:58.080 ServerApp] Serving notebooks from local directory: /opt/notebooks
[I 2023-09-28 02:33:58.080 ServerApp] Jupyter Server 2.7.3 is running at:
[I 2023-09-28 02:33:58.080 ServerApp] http://localhost:8888/tree?token=02114807d85fee44a0230261e979d9e966d97e58db0a7434
[I 2023-09-28 02:33:58.080 ServerApp]     http://127.0.0.1:8888/tree?token=02114807d85fee44a0230261e979d9e966d97e58db0a7434
[I 2023-09-28 02:33:58.080 ServerApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 2023-09-28 02:33:58.085 ServerApp] 
    
    To access the server, open this file in a browser:
        file:///root/.local/share/jupyter/runtime/jpserver-1-open.html
    Or copy and paste one of these URLs:
        http://localhost:8888/tree?token=02114807d85fee44a0230261e979d9e966d97e58db0a7434
        http://127.0.0.1:8888/tree?token=02114807d85fee44a0230261e979d9e966d97e58db0a7434
```
