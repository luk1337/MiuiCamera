.class public Lcom/android/camera/PictureSizeManager;
.super Ljava/lang/Object;
.source "PictureSizeManager.java"


# static fields
.field private static sDefaultValue:Ljava/lang/String;

.field private static final sEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPictureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    .line 14
    const-string/jumbo v0, "4x3"

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    const-string/jumbo v1, "4x3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    const-string/jumbo v1, "16x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/PictureSize;>;"
    const/4 v1, 0x0

    .line 160
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 161
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    .line 162
    .local v2, "size":Lcom/android/camera/PictureSize;
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 164
    iget v1, v2, Lcom/android/camera/PictureSize;->width:I

    .line 165
    iget v0, v2, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    .line 169
    .end local v2    # "size":Lcom/android/camera/PictureSize;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static _findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/PictureSize;>;"
    const/4 v1, 0x0

    .line 146
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 147
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    .line 148
    .local v2, "size":Lcom/android/camera/PictureSize;
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio1_1(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 150
    iget v1, v2, Lcom/android/camera/PictureSize;->width:I

    .line 151
    iget v0, v2, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    .line 155
    .end local v2    # "size":Lcom/android/camera/PictureSize;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static _findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/PictureSize;>;"
    const/4 v1, 0x0

    .line 132
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 133
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    .line 134
    .local v2, "size":Lcom/android/camera/PictureSize;
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 136
    iget v1, v2, Lcom/android/camera/PictureSize;->width:I

    .line 137
    iget v0, v2, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    .line 141
    .end local v2    # "size":Lcom/android/camera/PictureSize;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x0

    .line 202
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 203
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 204
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 206
    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    .line 207
    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 211
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method private static findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x0

    .line 188
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 189
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 190
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio1_1(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 192
    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    .line 193
    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 197
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method private static findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x0

    .line 174
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 175
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 176
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 178
    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    .line 179
    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 183
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static getBestPanoPictureSize()Lcom/android/camera/PictureSize;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "desire":Lcom/android/camera/PictureSize;
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v0

    .line 85
    .local v0, "desire":Lcom/android/camera/PictureSize;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    :cond_1
    new-instance v0, Lcom/android/camera/PictureSize;

    .line 87
    .end local v0    # "desire":Lcom/android/camera/PictureSize;
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PictureSize;

    iget v2, v1, Lcom/android/camera/PictureSize;->width:I

    .line 88
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PictureSize;

    iget v1, v1, Lcom/android/camera/PictureSize;->height:I

    .line 86
    invoke-direct {v0, v2, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    .line 90
    .restart local v0    # "desire":Lcom/android/camera/PictureSize;
    :cond_2
    return-object v0

    .line 81
    .local v0, "desire":Lcom/android/camera/PictureSize;
    :cond_3
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v0

    .local v0, "desire":Lcom/android/camera/PictureSize;
    goto :goto_0
.end method

.method public static getBestPictureSize()Lcom/android/camera/PictureSize;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-static {v4}, Lcom/android/camera/PictureSizeManager;->getPictureSize(Z)Lcom/android/camera/PictureSize;

    move-result-object v0

    .line 60
    .local v0, "candidate":Lcom/android/camera/PictureSize;
    const/4 v1, 0x0

    .line 61
    .local v1, "desire":Lcom/android/camera/PictureSize;
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio16_9()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    .line 69
    .end local v1    # "desire":Lcom/android/camera/PictureSize;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    :cond_1
    new-instance v1, Lcom/android/camera/PictureSize;

    .line 71
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    iget v3, v2, Lcom/android/camera/PictureSize;->width:I

    .line 72
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    iget v2, v2, Lcom/android/camera/PictureSize;->height:I

    .line 70
    invoke-direct {v1, v3, v2}, Lcom/android/camera/PictureSize;-><init>(II)V

    .line 74
    :cond_2
    return-object v1

    .line 63
    .restart local v1    # "desire":Lcom/android/camera/PictureSize;
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio4_3()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    .local v1, "desire":Lcom/android/camera/PictureSize;
    goto :goto_0

    .line 65
    .local v1, "desire":Lcom/android/camera/PictureSize;
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio1_1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    .local v1, "desire":Lcom/android/camera/PictureSize;
    goto :goto_0
.end method

.method public static getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public static getEntries()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 23
    const v1, 0x7f0e003e

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 24
    const v1, 0x7f0e003f

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 22
    return-object v0
.end method

.method public static getEntryValues()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 30
    .local v0, "result":[Ljava/lang/String;
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 31
    return-object v0
.end method

.method public static getPictureSize(Z)Lcom/android/camera/PictureSize;
    .locals 4
    .param p0, "settingOnly"    # Z

    .prologue
    const/4 v1, 0x1

    .line 47
    if-nez p0, :cond_0

    const-string/jumbo v0, "pref_camera_square_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/camera/PictureSize;

    invoke-direct {v0, v1, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    return-object v0

    .line 50
    :cond_0
    new-instance v0, Lcom/android/camera/PictureSize;

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    .line 51
    const-string/jumbo v2, "pref_camera_picturesize_key"

    sget-object v3, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/PictureSize;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static initSensorRatio(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    sget-boolean v4, Lcom/android/camera/Device;->IS_MI9:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/camera/Device;->IS_A8:Z

    if-eqz v4, :cond_1

    .line 249
    :cond_0
    const-string/jumbo v4, "16x9"

    sput-object v4, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    .line 250
    return-void

    .line 252
    :cond_1
    const/4 v1, -0x1

    .line 253
    .local v1, "maxIndex":I
    const/4 v2, 0x0

    .line 254
    .local v2, "maxValue":I
    new-instance v3, Lcom/android/camera/PictureSize;

    invoke-direct {v3}, Lcom/android/camera/PictureSize;-><init>()V

    .line 255
    .local v3, "pictureSize":Lcom/android/camera/PictureSize;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 256
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    invoke-virtual {v3, v4}, Lcom/android/camera/PictureSize;->setPictureSize(Landroid/hardware/Camera$Size;)Lcom/android/camera/PictureSize;

    .line 257
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->area()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 258
    move v1, v0

    .line 259
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->area()I

    move-result v2

    .line 255
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    invoke-virtual {v3, v4}, Lcom/android/camera/PictureSize;->setPictureSize(Landroid/hardware/Camera$Size;)Lcom/android/camera/PictureSize;

    .line 263
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->isAspectRatio4_3()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 264
    const-string/jumbo v4, "4x3"

    sput-object v4, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    .line 246
    :goto_1
    return-void

    .line 266
    :cond_4
    const-string/jumbo v4, "16x9"

    sput-object v4, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    goto :goto_1
.end method

.method public static initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V
    .locals 8
    .param p0, "mActivity"    # Lcom/android/camera/ActivityBase;
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ActivityBase;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    sget-object v6, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 95
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 96
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "The supported picture size list return from hal is null!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 98
    :cond_1
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->initSensorRatio(Ljava/util/List;)V

    .line 100
    if-eqz p2, :cond_4

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "size$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 103
    .local v1, "size":Landroid/hardware/Camera$Size;
    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    iget v7, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v7

    if-gt v6, p2, :cond_2

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    :cond_3
    move-object p1, v0

    .line 110
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    .end local v2    # "size$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v5

    .line 111
    .local v5, "size4_3":Lcom/android/camera/PictureSize;
    if-eqz v5, :cond_5

    .line 112
    sget-object v6, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_5
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v4

    .line 116
    .local v4, "size1_1":Lcom/android/camera/PictureSize;
    if-eqz v4, :cond_6

    .line 117
    sget-object v6, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_6
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v3

    .line 121
    .local v3, "size16_9":Lcom/android/camera/PictureSize;
    if-eqz v3, :cond_7

    .line 122
    sget-object v6, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_7
    sget-object v6, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_8

    .line 126
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Not find the desire picture sizes!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 93
    :cond_8
    return-void
.end method
