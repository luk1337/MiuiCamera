.class public Lcom/android/camera/portability/Camera1Parameters;
.super Ljava/lang/Object;
.source "Camera1Parameters.java"

# interfaces
.implements Lcom/android/camera/portability/ICameraParameters;


# instance fields
.field private mParameter:Landroid/hardware/Camera$Parameters;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/camera/portability/Camera1Parameters;->mParameter:Landroid/hardware/Camera$Parameters;

    .line 11
    return-void
.end method


# virtual methods
.method public getSupportedColorEffects()Ljava/util/List;
    .locals 2
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
    const/4 v1, 0x0

    .line 17
    iget-object v0, p0, Lcom/android/camera/portability/Camera1Parameters;->mParameter:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/android/camera/portability/Camera1Parameters;->mParameter:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 20
    :cond_0
    return-object v1
.end method

.method public getSupportedFocusModes()Ljava/util/List;
    .locals 2
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
    const/4 v1, 0x0

    .line 25
    iget-object v0, p0, Lcom/android/camera/portability/Camera1Parameters;->mParameter:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/android/camera/portability/Camera1Parameters;->mParameter:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 28
    :cond_0
    return-object v1
.end method

.method public getSupportedSceneModes()Ljava/util/List;
    .locals 2
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
    const/4 v1, 0x0

    .line 33
    iget-object v0, p0, Lcom/android/camera/portability/Camera1Parameters;->mParameter:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/camera/portability/Camera1Parameters;->mParameter:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    return-object v1
.end method

.method public getSupportedWhiteBalance()Ljava/util/List;
    .locals 2
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
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/android/camera/portability/Camera1Parameters;->mParameter:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/camera/portability/Camera1Parameters;->mParameter:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 44
    :cond_0
    return-object v1
.end method
