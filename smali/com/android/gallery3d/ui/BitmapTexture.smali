.class public Lcom/android/gallery3d/ui/BitmapTexture;
.super Lcom/android/gallery3d/ui/UploadedTexture;
.source "BitmapTexture.java"


# instance fields
.field protected mContentBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "hasBorder"    # Z

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/UploadedTexture;-><init>(Z)V

    .line 37
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    .line 38
    iput-object p1, p0, Lcom/android/gallery3d/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    .line 35
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 8
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 56
    .local v7, "width":I
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 57
    .local v6, "height":I
    mul-int v0, v7, p5

    mul-int v1, p4, v6

    if-eq v0, v1, :cond_1

    .line 58
    move v2, p2

    .local v2, "newX":I
    move v3, p3

    .local v3, "newY":I
    move v4, p4

    .local v4, "newW":I
    move v5, p5

    .line 59
    .local v5, "newH":I
    mul-int v0, v7, p5

    mul-int v1, p4, v6

    if-le v0, v1, :cond_0

    .line 60
    mul-int v0, p5, v7

    div-int v4, v0, v6

    .line 61
    move v5, p5

    .line 62
    sub-int v0, p4, v4

    div-int/lit8 v0, v0, 0x2

    add-int v2, p2, v0

    .line 63
    move v3, p3

    :goto_0
    move-object v0, p0

    move-object v1, p1

    .line 70
    invoke-super/range {v0 .. v5}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 54
    .end local v2    # "newX":I
    .end local v3    # "newY":I
    .end local v4    # "newW":I
    .end local v5    # "newH":I
    :goto_1
    return-void

    .line 65
    .restart local v2    # "newX":I
    .restart local v3    # "newY":I
    .restart local v4    # "newW":I
    .restart local v5    # "newH":I
    :cond_0
    move v4, p4

    .line 66
    mul-int v0, p4, v6

    div-int v5, v0, v7

    .line 67
    move v2, p2

    .line 68
    sub-int v0, p5, v5

    div-int/lit8 v0, v0, 0x2

    add-int v3, p3, v0

    goto :goto_0

    .line 72
    .end local v2    # "newX":I
    .end local v3    # "newY":I
    .end local v4    # "newW":I
    .end local v5    # "newH":I
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_1
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 42
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
