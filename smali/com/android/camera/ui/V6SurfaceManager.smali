.class public Lcom/android/camera/ui/V6SurfaceManager;
.super Ljava/lang/Object;
.source "V6SurfaceManager.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mInitialized:Z

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceParent:Landroid/widget/FrameLayout;

.field private mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "surfaceViewParent"    # Landroid/widget/FrameLayout;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mActivity:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceParent:Landroid/widget/FrameLayout;

    .line 28
    return-void
.end method


# virtual methods
.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public initializeSurfaceView()V
    .locals 6

    .prologue
    const v5, 0x7f0c009c

    const/4 v4, 0x0

    .line 34
    const-string/jumbo v1, "V6SurfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initializeSurfaceView mSurfaceView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mInitialized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/ui/V6SurfaceManager;->mInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceParent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 36
    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v1, :cond_2

    .line 38
    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceParent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    .line 39
    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceParent:Landroid/widget/FrameLayout;

    const v3, 0x7f04002c

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceParent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    .line 43
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mInitialized:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 45
    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 46
    .local v0, "surfaceHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 47
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 48
    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mInitialized:Z

    .line 51
    const-string/jumbo v1, "V6SurfaceManager"

    const-string/jumbo v2, "Using mdp_preview_content (MDP path)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .end local v0    # "surfaceHolder":Landroid/view/SurfaceHolder;
    :cond_1
    :goto_0
    return-void

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method public isSurfaceViewVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 118
    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 113
    return-void
.end method

.method public setSurfaceViewVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 66
    iget-object v3, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceParent:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 65
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 66
    goto :goto_0

    :cond_2
    move v1, v2

    .line 68
    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 82
    const-string/jumbo v0, "V6SurfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceChanged: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 83
    const-string/jumbo v2, " mSurfaceHolder="

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 84
    const-string/jumbo v2, " holder="

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object p1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 81
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v4, 0x0

    .line 94
    const-string/jumbo v0, "V6SurfaceManager"

    const-string/jumbo v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput-object p1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceManager;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f0c009c

    .line 97
    const/4 v3, 0x2

    move-object v5, v4

    .line 96
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 109
    const-string/jumbo v0, "V6SurfaceManager"

    const-string/jumbo v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 108
    return-void
.end method
