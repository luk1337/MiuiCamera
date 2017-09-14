.class public Lcom/android/camera/google/ProcessingMediaManager;
.super Ljava/lang/Object;
.source "ProcessingMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/google/ProcessingMediaManager$InstanceHolder;,
        Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;
    }
.end annotation


# instance fields
.field private mProcessingTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/google/ProcessingMediaManager;->mProcessingTable:Ljava/util/Map;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/google/ProcessingMediaManager;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/camera/google/ProcessingMediaManager;-><init>()V

    return-void
.end method

.method public static instance()Lcom/android/camera/google/ProcessingMediaManager;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/android/camera/google/ProcessingMediaManager$InstanceHolder;->-get0()Lcom/android/camera/google/ProcessingMediaManager;

    move-result-object v0

    return-object v0
.end method

.method public static notifyProcessingUri(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaStoreId"    # J

    .prologue
    const/4 v4, 0x0

    .line 94
    if-nez p0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getQueryProcessingUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    .line 98
    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "ProcessingMedia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyProcessingUri uri-> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 93
    return-void
.end method


# virtual methods
.method public addProcessingMedia(Landroid/content/Context;Landroid/net/Uri;Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "thumb"    # Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    return-void

    .line 53
    :cond_0
    const-string/jumbo v2, "ProcessingMedia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addProcessingMedia uri -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 55
    .local v0, "id":J
    iget-object v2, p0, Lcom/android/camera/google/ProcessingMediaManager;->mProcessingTable:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p1, v0, v1}, Lcom/android/camera/google/ProcessingMediaManager;->notifyProcessingUri(Landroid/content/Context;J)V

    .line 49
    return-void
.end method

.method public getProcessingMedia(J)Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/google/ProcessingMediaManager;->mProcessingTable:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/google/ProcessingMediaManager$JpegThumbnail;

    return-object v0
.end method

.method public getProcessingMedias()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/camera/google/ProcessingMediaManager;->mProcessingTable:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "id":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public isProcessingMedia(J)Z
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/google/ProcessingMediaManager;->mProcessingTable:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isProcessingMedia(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 68
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 69
    .local v0, "id":J
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/google/ProcessingMediaManager;->isProcessingMedia(J)Z

    move-result v2

    return v2
.end method

.method public removeProcessingMedia(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 81
    if-nez p2, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    const-string/jumbo v2, "ProcessingMedia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeProcessingMedia uri->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 86
    .local v0, "id":J
    iget-object v2, p0, Lcom/android/camera/google/ProcessingMediaManager;->mProcessingTable:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    return-void

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/android/camera/google/ProcessingMediaManager;->mProcessingTable:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {p1, v0, v1}, Lcom/android/camera/google/ProcessingMediaManager;->notifyProcessingUri(Landroid/content/Context;J)V

    .line 80
    return-void
.end method
