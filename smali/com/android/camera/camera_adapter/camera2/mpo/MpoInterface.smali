.class public Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;
.super Ljava/lang/Object;
.source "MpoInterface.java"


# static fields
.field public static final TAG_AXIS_DISTANCE_X:I

.field public static final TAG_AXIS_DISTANCE_Y:I

.field public static final TAG_AXIS_DISTANCE_Z:I

.field public static final TAG_BASELINE_LEN:I

.field public static final TAG_BASE_VIEWPOINT_NUM:I

.field public static final TAG_CONVERGE_ANGLE:I

.field public static final TAG_DIVERGE_ANGLE:I

.field public static final TAG_IMAGE_NUMBER:I

.field public static final TAG_IMAGE_UNIQUE_ID_LIST:I

.field public static final TAG_MP_ENTRY:I

.field public static final TAG_MP_FORMAT_VERSION:I

.field public static final TAG_NUM_CAPTURED_FRAMES:I

.field public static final TAG_NUM_IMAGES:I

.field public static final TAG_PAN_ORIENTATION:I

.field public static final TAG_PAN_OVERLAP_H:I

.field public static final TAG_PAN_OVERLAP_V:I

.field public static final TAG_PITCH_ANGLE:I

.field public static final TAG_ROLL_ANGLE:I

.field public static final TAG_YAW_ANGLE:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 39
    const/4 v0, 0x3

    const/16 v1, -0x5000

    .line 38
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    .line 41
    const/16 v0, -0x4fff

    .line 40
    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    .line 43
    const/16 v0, -0x4ffe

    .line 42
    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_ENTRY:I

    .line 45
    const/16 v0, -0x4ffd

    .line 44
    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_IMAGE_UNIQUE_ID_LIST:I

    .line 47
    const/16 v0, -0x4ffc

    .line 46
    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_NUM_CAPTURED_FRAMES:I

    .line 51
    const/16 v0, -0x4eff

    .line 50
    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    .line 53
    const/16 v0, -0x4dff

    .line 52
    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_PAN_ORIENTATION:I

    .line 55
    const/16 v0, -0x4dfe

    .line 54
    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_PAN_OVERLAP_H:I

    .line 57
    const/16 v0, -0x4dfd

    .line 56
    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_PAN_OVERLAP_V:I

    .line 59
    const/16 v0, -0x4dfc

    .line 58
    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_BASE_VIEWPOINT_NUM:I

    .line 61
    const/16 v0, -0x4dfb

    .line 60
    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_CONVERGE_ANGLE:I

    .line 63
    const/16 v0, -0x4dfa

    .line 62
    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_BASELINE_LEN:I

    .line 65
    const/16 v0, -0x4df9

    .line 64
    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_DIVERGE_ANGLE:I

    .line 67
    const/16 v0, -0x4df8

    .line 66
    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_AXIS_DISTANCE_X:I

    .line 69
    const/16 v0, -0x4df7

    .line 68
    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_AXIS_DISTANCE_Y:I

    .line 71
    const/16 v0, -0x4df6

    .line 70
    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_AXIS_DISTANCE_Z:I

    .line 73
    const/16 v0, -0x4df5

    .line 72
    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_YAW_ANGLE:I

    .line 75
    const/16 v0, -0x4df4

    .line 74
    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_PITCH_ANGLE:I

    .line 77
    const/16 v0, -0x4df3

    .line 76
    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_ROLL_ANGLE:I

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFileWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 5
    .param p0, "outFileName"    # Ljava/lang/String;

    .prologue
    .line 145
    if-nez p0, :cond_0

    .line 146
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    :cond_0
    const/4 v1, 0x0

    .line 150
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    move-object v1, v2

    .line 155
    .end local v2    # "out":Ljava/io/OutputStream;
    :goto_0
    return-object v1

    .line 151
    .restart local v1    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 153
    const-string/jumbo v3, "MpoInterface"

    const-string/jumbo v4, "File not found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getMpoWriterStream(Ljava/io/OutputStream;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;
    .locals 3
    .param p0, "outStream"    # Ljava/io/OutputStream;

    .prologue
    .line 129
    if-nez p0, :cond_0

    .line 130
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_0
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 133
    .local v0, "mos":Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;
    return-object v0
.end method

.method public static writeMpo(Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;Ljava/io/OutputStream;)I
    .locals 4
    .param p0, "mpo"    # Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 80
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 81
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_1
    invoke-static {p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->getMpoWriterStream(Ljava/io/OutputStream;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;

    move-result-object v1

    .line 84
    .local v1, "s":Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;
    invoke-virtual {v1, p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->setMpoData(Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;)V

    .line 88
    :try_start_0
    invoke-virtual {v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->writeMpoFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 97
    invoke-virtual {v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->size()I

    move-result v2

    return v2

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 91
    const-string/jumbo v2, "MpoInterface"

    const-string/jumbo v3, "IO Exception when writing mpo image"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v2, -0x1

    return v2
.end method

.method public static writeMpo(Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;Ljava/lang/String;)I
    .locals 2
    .param p0, "mpo"    # Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;
    .param p1, "outFilename"    # Ljava/lang/String;

    .prologue
    .line 114
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    invoke-static {p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->getFileWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->writeMpo(Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public static writeMpo(Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;)[B
    .locals 4
    .param p0, "mpo"    # Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    .prologue
    const/4 v3, 0x0

    .line 101
    if-nez p0, :cond_0

    .line 102
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v2, 0x100000

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 105
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->writeMpo(Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;Ljava/io/OutputStream;)I

    move-result v1

    .line 106
    .local v1, "size":I
    if-lez v1, :cond_1

    .line 107
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 109
    :cond_1
    return-object v3
.end method
