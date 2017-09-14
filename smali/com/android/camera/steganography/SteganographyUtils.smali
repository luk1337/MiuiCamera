.class public Lcom/android/camera/steganography/SteganographyUtils;
.super Ljava/lang/Object;
.source "SteganographyUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string/jumbo v0, "Whet_SteganographyUtils"

    sput-object v0, Lcom/android/camera/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "watermark"    # Ljava/lang/String;

    .prologue
    .line 13
    const/4 v1, 0x0

    .line 14
    .local v1, "ret":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    :cond_0
    return-object v1

    .line 19
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/android/camera/steganography/Steg;->withInput(Landroid/graphics/Bitmap;)Lcom/android/camera/steganography/Steg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/steganography/Steg;->encode(Ljava/lang/String;)Lcom/android/camera/steganography/EncodedObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/steganography/EncodedObject;->intoBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 23
    .end local v1    # "ret":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 20
    .restart local v1    # "ret":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "encodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
