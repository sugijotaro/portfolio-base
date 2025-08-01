#!/usr/bin/env python3
import os
import sys
import argparse

def rename_files_and_dirs(directory):
    """
    指定されたディレクトリとそのサブディレクトリ内のファイル名とディレクトリ名の「-」を「_」に変換
    .gitディレクトリ内は除外
    """
    renamed_files = 0
    renamed_dirs = 0
    
    # まずディレクトリを深い階層から順にリネーム（topdown=False）
    for root, dirs, files in os.walk(directory, topdown=False):
        # .gitディレクトリ内はスキップ
        if '.git' in root.split(os.sep):
            continue
            
        # .gitディレクトリ自体も除外
        dirs[:] = [d for d in dirs if d != '.git']
        
        # ディレクトリ名をリネーム
        for dirname in dirs:
            if '-' in dirname:
                new_dirname = dirname.replace('-', '_')
                old_path = os.path.join(root, dirname)
                new_path = os.path.join(root, new_dirname)
                
                try:
                    os.rename(old_path, new_path)
                    print(f"Renamed dir: {os.path.relpath(old_path)} -> {new_dirname}")
                    renamed_dirs += 1
                except OSError as e:
                    print(f"Error renaming directory {dirname}: {e}")
    
    # 次にファイルをリネーム
    for root, dirs, files in os.walk(directory):
        # .gitディレクトリ内はスキップ
        if '.git' in root.split(os.sep):
            continue
            
        # .gitディレクトリ自体も除外
        dirs[:] = [d for d in dirs if d != '.git']
        
        for filename in files:
            if '-' in filename:
                new_filename = filename.replace('-', '_')
                old_path = os.path.join(root, filename)
                new_path = os.path.join(root, new_filename)
                
                try:
                    os.rename(old_path, new_path)
                    print(f"Renamed file: {os.path.relpath(old_path)} -> {new_filename}")
                    renamed_files += 1
                except OSError as e:
                    print(f"Error renaming file {filename}: {e}")
    
    print(f"\n総計: {renamed_files} ファイル、{renamed_dirs} ディレクトリをリネームしました")
    return renamed_files, renamed_dirs

def main():
    parser = argparse.ArgumentParser(description='ファイル名とディレクトリ名の「-」を「_」に変換（再帰的、.gitディレクトリを除外）')
    parser.add_argument('directory', nargs='?', default='.', help='処理対象のディレクトリパス（デフォルト: 現在のディレクトリ）')
    args = parser.parse_args()
    
    if not os.path.isdir(args.directory):
        print(f"Error: {args.directory} はディレクトリではありません")
        sys.exit(1)
    
    print(f"ディレクトリをスキャン中: {os.path.abspath(args.directory)}")
    print(".gitディレクトリは除外します")
    rename_files_and_dirs(args.directory)

if __name__ == "__main__":
    main()