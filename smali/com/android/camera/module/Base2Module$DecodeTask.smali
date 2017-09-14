.class public Lcom/android/camera/module/Base2Module$DecodeTask;
.super Landroid/os/AsyncTask;
.source "Base2Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Base2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DecodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mData:[B

.field private mMirror:Z

.field private mOrientation:I

.field final synthetic this$0:Lcom/android/camera/module/Base2Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Base2Module;[BIZ)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/module/Base2Module;
    .param p2, "data"    # [B
    .param p3, "orientation"    # I
    .param p4, "mirror"    # Z

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->this$0:Lcom/android/camera/module/Base2Module;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 478
    iput-object p2, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mData:[B

    .line 479
    iput p3, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mOrientation:I

    .line 480
    iput-boolean p4, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mMirror:Z

    .line 481
    iget v1, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mOrientation:I

    if-gez v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mData:[B

    invoke-static {v1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v0

    .line 483
    .local v0, "exif":Lcom/android/gallery3d/exif/ExifInterface;
    invoke-static {v0}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mOrientation:I

    .line 477
    .end local v0    # "exif":Lcom/android/gallery3d/exif/ExifInterface;
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 490
    iget-object v2, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mData:[B

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/camera/Util;->downSample([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 491
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mOrientation:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mMirror:Z

    if-eqz v2, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    .line 492
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 493
    .local v5, "m":Landroid/graphics/Matrix;
    iget-boolean v2, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mMirror:Z

    if-eqz v2, :cond_1

    .line 495
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 497
    :cond_1
    iget v2, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mOrientation:I

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 498
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 501
    .end local v5    # "m":Landroid/graphics/Matrix;
    :cond_2
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 488
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/module/Base2Module$DecodeTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 505
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "bitmap"    # Ljava/lang/Object;

    .prologue
    .line 505
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "bitmap":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/module/Base2Module$DecodeTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
