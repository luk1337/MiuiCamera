.class public Lcom/android/camera/steganography/Steg;
.super Ljava/lang/Object;
.source "Steg.java"


# instance fields
.field private final PASS_NONE:I

.field private final PASS_SIMPLE_XOR:I

.field private inBitmap:Landroid/graphics/Bitmap;

.field private key:Ljava/lang/String;

.field private passmode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lcom/android/camera/steganography/Steg;->PASS_NONE:I

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/steganography/Steg;->PASS_SIMPLE_XOR:I

    .line 20
    iput-object v2, p0, Lcom/android/camera/steganography/Steg;->key:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/android/camera/steganography/Steg;->passmode:I

    .line 22
    iput-object v2, p0, Lcom/android/camera/steganography/Steg;->inBitmap:Landroid/graphics/Bitmap;

    .line 12
    return-void
.end method

.method private bytesAvaliableInBitmap()I
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/steganography/Steg;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/camera/steganography/Steg;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/steganography/Steg;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0xc

    return v0
.end method

.method private setInputBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/steganography/Steg;->inBitmap:Landroid/graphics/Bitmap;

    .line 60
    return-void
.end method

.method public static withInput(Landroid/graphics/Bitmap;)Lcom/android/camera/steganography/Steg;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 38
    new-instance v0, Lcom/android/camera/steganography/Steg;

    invoke-direct {v0}, Lcom/android/camera/steganography/Steg;-><init>()V

    .line 39
    .local v0, "steg":Lcom/android/camera/steganography/Steg;
    invoke-direct {v0, p0}, Lcom/android/camera/steganography/Steg;->setInputBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public encode(Ljava/lang/String;)Lcom/android/camera/steganography/EncodedObject;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/steganography/Steg;->encode([B)Lcom/android/camera/steganography/EncodedObject;

    move-result-object v0

    return-object v0
.end method

.method public encode([B)Lcom/android/camera/steganography/EncodedObject;
    .locals 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    array-length v0, p1

    invoke-direct {p0}, Lcom/android/camera/steganography/Steg;->bytesAvaliableInBitmap()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not enough space in bitmap to hold data (max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/steganography/Steg;->bytesAvaliableInBitmap()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    new-instance v0, Lcom/android/camera/steganography/EncodedObject;

    iget-object v1, p0, Lcom/android/camera/steganography/Steg;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, p1}, Lcom/android/camera/steganography/BitmapEncoder;->encode(Landroid/graphics/Bitmap;[B)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/steganography/EncodedObject;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method
