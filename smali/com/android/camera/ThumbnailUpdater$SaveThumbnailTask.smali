.class Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ThumbnailUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/camera/Thumbnail;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ThumbnailUpdater;


# direct methods
.method private constructor <init>(Lcom/android/camera/ThumbnailUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ThumbnailUpdater;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ThumbnailUpdater;Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ThumbnailUpdater;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;-><init>(Lcom/android/camera/ThumbnailUpdater;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 128
    check-cast p1, [Lcom/android/camera/Thumbnail;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;->doInBackground([Lcom/android/camera/Thumbnail;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/camera/Thumbnail;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Lcom/android/camera/Thumbnail;

    .prologue
    .line 129
    array-length v2, p1

    .line 130
    .local v2, "n":I
    iget-object v3, p0, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v3}, Lcom/android/camera/ThumbnailUpdater;->-get0(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 131
    .local v0, "filesDir":Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 132
    aget-object v3, p1, v1

    invoke-virtual {v3, v0}, Lcom/android/camera/Thumbnail;->saveLastThumbnailToFile(Ljava/io/File;)V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method
