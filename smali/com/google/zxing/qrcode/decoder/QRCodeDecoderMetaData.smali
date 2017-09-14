.class public final Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;
.super Ljava/lang/Object;
.source "QRCodeDecoderMetaData.java"


# instance fields
.field private final mirrored:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .param p1, "mirrored"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;->mirrored:Z

    .line 33
    return-void
.end method


# virtual methods
.method public applyMirroredCorrection([Lcom/google/zxing/ResultPoint;)V
    .locals 5
    .param p1, "points"    # [Lcom/google/zxing/ResultPoint;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 48
    iget-boolean v1, p0, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;->mirrored:Z

    if-nez v1, :cond_1

    .line 49
    :cond_0
    return-void

    .line 48
    :cond_1
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 51
    aget-object v0, p1, v3

    .line 52
    .local v0, "bottomLeft":Lcom/google/zxing/ResultPoint;
    aget-object v1, p1, v4

    aput-object v1, p1, v3

    .line 53
    aput-object v0, p1, v4

    .line 55
    return-void
.end method
