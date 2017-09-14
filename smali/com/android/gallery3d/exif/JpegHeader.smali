.class Lcom/android/gallery3d/exif/JpegHeader;
.super Ljava/lang/Object;
.source "JpegHeader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isSofMarker(S)Z
    .locals 2
    .param p0, "marker"    # S

    .prologue
    const/4 v0, 0x0

    .line 36
    const/16 v1, -0x40

    if-lt p0, v1, :cond_0

    const/16 v1, -0x31

    if-gt p0, v1, :cond_0

    const/16 v1, -0x3c

    if-eq p0, v1, :cond_0

    const/16 v1, -0x38

    if-eq p0, v1, :cond_0

    .line 37
    const/16 v1, -0x34

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    .line 36
    :cond_0
    return v0
.end method
