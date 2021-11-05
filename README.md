# Running Android Studio and emulator in Docker container (mainly for musl distro)

## Usage

```
docker run kennycheng/android-studio [DISPLAY] [user]
```

## Example

```bash
docker run -v $HOME:$HOME kennycheng/android-studio :0 peter
```
