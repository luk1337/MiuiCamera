.class Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;
.super Ljava/lang/Object;
.source "UploadedTexture.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/UploadedTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BorderKey"
.end annotation


# instance fields
.field public config:Landroid/graphics/Bitmap$Config;

.field public length:I

.field public vertical:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;
    .locals 2

    .prologue
    .line 107
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->clone()Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 98
    instance-of v2, p1, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    .line 99
    check-cast v0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    .line 100
    .local v0, "o":Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->vertical:Z

    iget-boolean v3, v0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->vertical:Z

    if-ne v2, v3, :cond_1

    .line 101
    iget-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    iget-object v3, v0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->length:I

    iget v3, v0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->length:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 100
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->length:I

    xor-int v0, v1, v2

    .line 93
    .local v0, "x":I
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->vertical:Z

    if-eqz v1, :cond_0

    .end local v0    # "x":I
    :goto_0
    return v0

    .restart local v0    # "x":I
    :cond_0
    neg-int v0, v0

    goto :goto_0
.end method
