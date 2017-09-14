.class public Lcom/android/camera/ui/V6CameraPicker;
.super Lcom/android/camera/ui/AnimationImageView;
.source "V6CameraPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCameraFacing:I

.field private mEnabled:Z

.field private mInitEntryValues:Z

.field private mPreference:Lcom/android/camera/preferences/ListPreference;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/android/camera/ui/V6CameraPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/V6CameraPicker;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    .line 30
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/ListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    .line 32
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6CameraPicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method

.method private initEntryValues()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 71
    iget-boolean v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mInitEntryValues:Z

    if-nez v1, :cond_2

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .local v0, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 76
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 79
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 81
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lcom/android/camera/preferences/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 85
    iput-boolean v4, p0, Lcom/android/camera/ui/V6CameraPicker;->mInitEntryValues:Z

    .line 70
    .end local v0    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_2
    return-void
.end method

.method private isNeedShow()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    iget-object v2, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    if-le v2, v0, :cond_0

    .line 66
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 67
    goto :goto_0

    :cond_1
    move v0, v1

    .line 66
    goto :goto_0
.end method

.method private reloadPreference()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 90
    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraPicker;->isNeedShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v2

    .line 92
    iget-object v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iput v2, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    .line 89
    :goto_0
    return-void

    .line 95
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    goto :goto_0
.end method

.method private updateVisible()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraPicker;->isNeedShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    .line 58
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6CameraPicker;->setVisibility(I)V

    .line 55
    :goto_0
    return-void

    .line 60
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    .line 61
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraPicker;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6CameraPicker;->setEnabled(Z)V

    .line 44
    iput-boolean p1, p0, Lcom/android/camera/ui/V6CameraPicker;->mEnabled:Z

    .line 42
    return-void
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onCameraOpen()V

    .line 50
    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraPicker;->initEntryValues()V

    .line 51
    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraPicker;->updateVisible()V

    .line 52
    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraPicker;->reloadPreference()V

    .line 48
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Lcom/android/camera/ui/V6CameraPicker;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "click switch camera button"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    if-nez v0, :cond_2

    .line 104
    const/4 v6, 0x1

    .line 106
    .local v6, "newCameraFacing":I
    :goto_0
    iget v7, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    .line 107
    .local v7, "oldFacing":I
    iput v6, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 114
    iget-object v2, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 112
    const v2, 0x7f0c001d

    .line 113
    const/4 v3, 0x2

    .line 115
    const/4 v5, 0x0

    .line 110
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iput v7, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    .line 100
    :cond_0
    return-void

    .line 101
    .end local v6    # "newCameraFacing":I
    .end local v7    # "oldFacing":I
    :cond_1
    return-void

    .line 105
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "newCameraFacing":I
    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onResume()V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraPicker;->setVisibility(I)V

    .line 36
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    if-nez v0, :cond_0

    .line 123
    const/16 p1, 0x8

    .line 125
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    .line 121
    return-void
.end method
