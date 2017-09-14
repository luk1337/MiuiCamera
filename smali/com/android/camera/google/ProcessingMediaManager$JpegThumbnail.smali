.class public Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;
.super Ljava/lang/Object;
.source "ProcessingMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/google/ProcessingMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JpegThumbnail"
.end annotation


# instance fields
.field final data:[B

.field final orientation:I

.field private thumbBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "data"    # [B

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;->orientation:I

    .line 109
    iput-object p2, p0, Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;->data:[B

    .line 107
    return-void
.end method


# virtual methods
.method public decodeBitmap()Landroid/graphics/Bitmap;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 113
    iget-object v2, p0, Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;->thumbBitmap:Landroid/graphics/Bitmap;

    return-object v1

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;->data:[B

    if-nez v2, :cond_1

    .line 117
    const-string/jumbo v1, "ProcessingMedia"

    const-string/jumbo v2, "decodeBitmap, empty thumbnail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iput-object v6, p0, Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 119
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string/jumbo v2, "Empty thumbnail"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_1
    const/4 v0, 0x0

    .line 123
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;->data:[B

    iget-object v3, p0, Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;->data:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 135
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_2

    .line 136
    const-string/jumbo v1, "ProcessingMedia"

    const-string/jumbo v2, "decodeBitmap, no bitmap, pass bytes directly"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iput-object v6, p0, Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 138
    return-object v6

    .line 124
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v8

    .line 125
    .local v8, "error":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v2, "ProcessingMedia"

    const-string/jumbo v3, "decodeBitmap, first try failed "

    invoke-static {v2, v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 127
    .local v9, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x2

    iput v2, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 129
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;->data:[B

    iget-object v3, p0, Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;->data:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 130
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v7

    .line 132
    .local v7, "err":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v2, "ProcessingMedia"

    const-string/jumbo v3, "decodeBitmap, second try failed again, "

    invoke-static {v2, v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 140
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "err":Ljava/lang/OutOfMemoryError;
    .end local v8    # "error":Ljava/lang/OutOfMemoryError;
    .end local v9    # "opt":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    iget v2, p0, Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;->orientation:I

    if-eqz v2, :cond_4

    .line 141
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 142
    .local v5, "mat":Landroid/graphics/Matrix;
    iget v2, p0, Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;->orientation:I

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 143
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 144
    .local v10, "rotated":Landroid/graphics/Bitmap;
    if-eq v10, v0, :cond_3

    .line 145
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 147
    :cond_3
    iput-object v10, p0, Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 148
    return-object v10

    .line 150
    .end local v5    # "mat":Landroid/graphics/Matrix;
    .end local v10    # "rotated":Landroid/graphics/Bitmap;
    :cond_4
    iput-object v0, p0, Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 151
    return-object v0
.end method
