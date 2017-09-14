.class public abstract Lcom/android/gallery3d/ui/UploadedTexture;
.super Lcom/android/gallery3d/ui/BasicTexture;
.source "UploadedTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;
    }
.end annotation


# static fields
.field private static sBorderKey:Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

.field private static sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field static sCropRect:[F

.field static sTextureId:[I

.field private static sUploadedCount:I


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBorder:I

.field private mContentValid:Z

.field private mIsUploading:Z

.field private mOpaque:Z

.field private mThrottled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    .line 49
    new-instance v0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;-><init>(Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;)V

    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderKey:Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    .line 212
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    .line 213
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    .line 43
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/UploadedTexture;-><init>(Z)V

    .line 65
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 3
    .param p1, "hasBorder"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/gallery3d/ui/BasicTexture;-><init>(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 53
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mIsUploading:Z

    .line 57
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mOpaque:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mThrottled:Z

    .line 71
    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/UploadedTexture;->setBorder(Z)V

    .line 73
    iput v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    .line 69
    :cond_0
    return-void
.end method

.method private freeBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    iput-object v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 146
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 135
    iget-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 137
    iget-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 138
    .local v1, "w":I
    iget-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 139
    .local v0, "h":I
    iget v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 140
    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/ui/UploadedTexture;->setSize(II)V

    .line 143
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v2
.end method

.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "vertical"    # Z
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;
    .param p2, "length"    # I

    .prologue
    const/4 v3, 0x1

    .line 120
    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderKey:Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    .line 121
    .local v1, "key":Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;
    iput-boolean p0, v1, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->vertical:Z

    .line 122
    iput-object p1, v1, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    .line 123
    iput p2, v1, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->length:I

    .line 124
    sget-object v2, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 125
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 126
    if-eqz p0, :cond_1

    .line 127
    invoke-static {v3, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    :goto_0
    sget-object v2, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->clone()Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    return-object v0

    .line 128
    :cond_1
    invoke-static {p2, v3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static resetUploadLimit()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    sput v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    .line 204
    return-void
.end method

.method public static uploadLimitReached()Z
    .locals 2

    .prologue
    .line 209
    sget v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private uploadToCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 26
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;

    .prologue
    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 217
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_5

    .line 219
    :try_start_0
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .line 220
    .local v22, "bWidth":I
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    .line 221
    .local v21, "bHeight":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v1, v1, 0x2

    add-int v25, v22, v1

    .line 222
    .local v25, "width":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v1, v1, 0x2

    add-int v24, v21, v1

    .line 223
    .local v24, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getTextureWidth()I

    move-result v4

    .line 224
    .local v4, "texWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getTextureHeight()I

    move-result v5

    .line 226
    .local v5, "texHeight":I
    move/from16 v0, v22

    if-gt v0, v4, :cond_1

    move/from16 v0, v21

    if-gt v0, v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    .line 232
    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    int-to-float v2, v2

    const/4 v6, 0x0

    aput v2, v1, v6

    .line 233
    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int v2, v2, v21

    int-to-float v2, v2

    const/4 v6, 0x1

    aput v2, v1, v6

    .line 234
    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    move/from16 v0, v22

    int-to-float v2, v0

    const/4 v6, 0x2

    aput v2, v1, v6

    .line 235
    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    move/from16 v0, v21

    neg-int v2, v0

    int-to-float v2, v2

    const/4 v6, 0x3

    aput v2, v1, v6

    .line 238
    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v1, v6}, Lcom/android/gallery3d/ui/GLId;->glGenTextures(I[II)V

    .line 239
    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, 0xde1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 241
    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    .line 240
    const/16 v2, 0xde1

    .line 241
    const v6, 0x8b9d

    const/4 v7, 0x0

    .line 240
    invoke-static {v2, v6, v1, v7}, Landroid/opengl/GLES20;->glTexParameterfv(II[FI)V

    .line 242
    const/16 v1, 0xde1

    .line 243
    const/16 v2, 0x2802

    const v6, 0x812f

    .line 242
    invoke-static {v1, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 244
    const/16 v1, 0xde1

    .line 245
    const/16 v2, 0x2803

    const v6, 0x812f

    .line 244
    invoke-static {v1, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 247
    const v1, 0x46180400    # 9729.0f

    .line 246
    const/16 v2, 0xde1

    .line 247
    const/16 v6, 0x2801

    .line 246
    invoke-static {v2, v6, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 249
    const v1, 0x46180400    # 9729.0f

    .line 248
    const/16 v2, 0xde1

    .line 249
    const/16 v6, 0x2800

    .line 248
    invoke-static {v2, v6, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 251
    move/from16 v0, v22

    if-ne v0, v4, :cond_2

    move/from16 v0, v21

    if-ne v0, v5, :cond_2

    .line 252
    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v2, v13, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_0
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    .line 293
    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/ui/UploadedTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 294
    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mId:I

    .line 295
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mState:I

    .line 296
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    .line 215
    return-void

    .line 226
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 254
    :cond_2
    :try_start_1
    invoke-static {v13}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v3

    .line 255
    .local v3, "format":I
    invoke-static {v13}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v8

    .line 256
    .local v8, "type":I
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v23

    .line 258
    .local v23, "config":Landroid/graphics/Bitmap$Config;
    const/16 v1, 0xde1

    const/4 v2, 0x0

    .line 259
    const/4 v6, 0x0

    const/4 v9, 0x0

    move v7, v3

    .line 258
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 261
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    .line 260
    const/16 v9, 0xde1

    const/4 v10, 0x0

    move v14, v3

    move v15, v8

    invoke-static/range {v9 .. v15}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 263
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    if-lez v1, :cond_3

    .line 265
    const/4 v1, 0x1

    move-object/from16 v0, v23

    invoke-static {v1, v0, v5}, Lcom/android/gallery3d/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 266
    .local v18, "line":Landroid/graphics/Bitmap;
    const/16 v14, 0xde1

    const/4 v15, 0x0

    .line 267
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v19, v3

    move/from16 v20, v8

    .line 266
    invoke-static/range {v14 .. v20}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 270
    const/4 v1, 0x0

    move-object/from16 v0, v23

    invoke-static {v1, v0, v4}, Lcom/android/gallery3d/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 271
    const/16 v14, 0xde1

    const/4 v15, 0x0

    .line 272
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v19, v3

    move/from16 v20, v8

    .line 271
    invoke-static/range {v14 .. v20}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 276
    .end local v18    # "line":Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int v1, v1, v22

    if-ge v1, v4, :cond_4

    .line 277
    const/4 v1, 0x1

    move-object/from16 v0, v23

    invoke-static {v1, v0, v5}, Lcom/android/gallery3d/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 279
    .restart local v18    # "line":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int v16, v1, v22

    .line 278
    const/16 v14, 0xde1

    const/4 v15, 0x0

    .line 279
    const/16 v17, 0x0

    move/from16 v19, v3

    move/from16 v20, v8

    .line 278
    invoke-static/range {v14 .. v20}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 283
    .end local v18    # "line":Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int v1, v1, v21

    if-ge v1, v5, :cond_0

    .line 284
    const/4 v1, 0x0

    move-object/from16 v0, v23

    invoke-static {v1, v0, v4}, Lcom/android/gallery3d/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 286
    .restart local v18    # "line":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int v17, v1, v21

    .line 285
    const/16 v14, 0xde1

    const/4 v15, 0x0

    .line 286
    const/16 v16, 0x0

    move/from16 v19, v3

    move/from16 v20, v8

    .line 285
    invoke-static/range {v14 .. v20}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 289
    .end local v3    # "format":I
    .end local v4    # "texWidth":I
    .end local v5    # "texHeight":I
    .end local v8    # "type":I
    .end local v18    # "line":Landroid/graphics/Bitmap;
    .end local v21    # "bHeight":I
    .end local v22    # "bWidth":I
    .end local v23    # "config":Landroid/graphics/Bitmap$Config;
    .end local v24    # "height":I
    .end local v25    # "width":I
    :catchall_0
    move-exception v1

    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    .line 289
    throw v1

    .line 298
    :cond_5
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mState:I

    .line 299
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Texture load fail, no bitmap"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 161
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mHeight:I

    return v0
.end method

.method public getTarget()I
    .locals 1

    .prologue
    .line 311
    const/16 v0, 0xde1

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 154
    iget v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 155
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mWidth:I

    return v0
.end method

.method public isContentValid()Z
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mOpaque:Z

    return v0
.end method

.method public onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 1
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->isContentValid()Z

    move-result v0

    return v0
.end method

.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    .line 325
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    .line 323
    :cond_0
    return-void
.end method

.method public setOpaque(Z)V
    .locals 0
    .param p1, "isOpaque"    # Z

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mOpaque:Z

    .line 314
    return-void
.end method

.method public updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;

    .prologue
    const/16 v0, 0xde1

    .line 187
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 188
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mThrottled:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 189
    return-void

    .line 191
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->uploadToCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    if-nez v1, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 194
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    .line 195
    .local v5, "format":I
    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    .line 196
    .local v6, "type":I
    iget v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 197
    iget v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    iget v3, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    const/4 v1, 0x0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 199
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    goto :goto_0
.end method
