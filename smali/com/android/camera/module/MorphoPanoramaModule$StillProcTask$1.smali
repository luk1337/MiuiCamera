.class Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask$1;
.super Ljava/lang/Object;
.source "MorphoPanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;


# direct methods
.method constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask$1;->this$1:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask$1;->this$1:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap13(Lcom/android/camera/module/MorphoPanoramaModule;Z)V

    .line 1048
    return-void
.end method
