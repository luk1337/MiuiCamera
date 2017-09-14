.class public Lcom/android/camera/ui/SubScreenPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "SubScreenPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SubScreenPopup$1;,
        Lcom/android/camera/ui/SubScreenPopup$AnimationType;,
        Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;
    }
.end annotation


# instance fields
.field private mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mExitView:Lcom/android/camera/ui/V6ModeExitView;

.field private mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mPendingAnimationType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

.field private mPopupTranslationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/camera/ui/V6AbstractSettingPopup;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningAnimation:Landroid/animation/ValueAnimator;

.field private mSettingView:Lcom/android/camera/ui/SettingView;

.field private mSubPopupParent:Landroid/widget/FrameLayout;

.field private mTranslationAnimationMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mValueBottomLine:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6ModeExitView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/SubScreenPopup$AnimationType;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mPendingAnimationType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/SubScreenPopup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/SubScreenPopup;Lcom/android/camera/ui/V6AbstractSettingPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/SubScreenPopup;ILcom/android/camera/ui/SubScreenPopup$AnimationType;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p1, "transY"    # I
    .param p2, "type"    # Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SubScreenPopup;->setupAnimation(ILcom/android/camera/ui/SubScreenPopup$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/SubScreenPopup;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenPopup;->removeOnPreDrawListener()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/SubScreenPopup;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenPopup;->computeTransY()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/camera/ui/SubScreenPopup;Lcom/android/camera/ui/V6AbstractSettingPopup;I)V
    .locals 0
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;
    .param p2, "transY"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SubScreenPopup;->setTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/camera/ui/SubScreenPopup;Landroid/animation/ValueAnimator;Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "type"    # Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SubScreenPopup;->startAnimation(Landroid/animation/ValueAnimator;Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/android/camera/ui/SubScreenPopup$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SubScreenPopup$1;-><init>(Lcom/android/camera/ui/SubScreenPopup;)V

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mPopupTranslationMap:Ljava/util/HashMap;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mTranslationAnimationMap:Landroid/util/SparseArray;

    .line 61
    return-void
.end method

.method private addOnPreDrawListener()Z
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenPopup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 221
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 223
    const/4 v1, 0x1

    return v1

    .line 225
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private computeTransY()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method private getItemKeys()Ljava/util/List;
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
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_4

    .line 102
    sget-boolean v1, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM3Z:Z

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    const-string/jumbo v1, "pref_skin_beautify_enlarge_eye_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    const-string/jumbo v1, "pref_skin_beautify_slim_face_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {}, Lcom/android/camera/Device;->isGlobalBuild()Z

    move-result v1

    if-nez v1, :cond_2

    .line 108
    const-string/jumbo v1, "pref_skin_beautify_skin_color_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_2
    const-string/jumbo v1, "pref_skin_beautify_skin_smooth_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_3
    :goto_0
    return-object v0

    .line 113
    :cond_4
    const-string/jumbo v1, "pref_camera_whitebalance_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 115
    const-string/jumbo v1, "pref_focus_position_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    const-string/jumbo v1, "pref_qc_camera_exposuretime_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_5
    const-string/jumbo v1, "pref_qc_camera_iso_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    const-string/jumbo v1, "pref_camera_zoom_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;)I
    .locals 2
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup;->mPopupTranslationMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 239
    .local v0, "transY":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 240
    const/4 v1, 0x0

    return v1

    .line 242
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private removeOnPreDrawListener()Z
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenPopup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 230
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 232
    const/4 v1, 0x1

    return v1

    .line 234
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private setTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;I)V
    .locals 2
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;
    .param p2, "transY"    # I

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mPopupTranslationMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_0
    return-void
.end method

.method private setupAnimation(ILcom/android/camera/ui/SubScreenPopup$AnimationType;)Landroid/animation/ValueAnimator;
    .locals 11
    .param p1, "transY"    # I
    .param p2, "type"    # Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 257
    iget-object v6, p0, Lcom/android/camera/ui/SubScreenPopup;->mTranslationAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 258
    .local v0, "animSlideDown":Landroid/animation/ValueAnimator;
    if-eqz v0, :cond_2

    .line 259
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v4

    .line 260
    .local v4, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 261
    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    instance-of v6, v2, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;

    if-eqz v6, :cond_0

    .line 262
    check-cast v2, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;

    .end local v2    # "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-virtual {v2, p2}, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    goto :goto_0

    .line 265
    :cond_1
    const-string/jumbo v6, "V6ManualPopup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setupAnimation: reuse transY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " -> anim="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v3    # "listener$iterator":Ljava/util/Iterator;
    .end local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :goto_1
    return-object v0

    .line 267
    :cond_2
    new-instance v1, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/SubScreenPopup;)V

    .line 268
    .local v1, "animatorListener":Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;
    invoke-virtual {v1, p2}, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    .line 269
    const-string/jumbo v6, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    int-to-float v8, p1

    aput v8, v7, v10

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 270
    .local v5, "popupTransYOut":Landroid/animation/PropertyValuesHolder;
    iget-object v6, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    new-array v7, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 271
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 272
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 274
    iget-object v6, p0, Lcom/android/camera/ui/SubScreenPopup;->mTranslationAnimationMap:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    const-string/jumbo v6, "V6ManualPopup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setupAnimation: new transY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " -> anim="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z
    .locals 6
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    iget-object v3, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    .line 205
    iget-object v3, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    .line 206
    .local v1, "childCount":I
    if-nez v1, :cond_0

    .line 207
    return v5

    .line 209
    :cond_0
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 210
    iget-object v3, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 211
    .local v0, "child":Landroid/view/View;
    if-eq p1, v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 212
    return v4

    .line 209
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "index":I
    :cond_2
    return v5
.end method

.method private startAnimation(Landroid/animation/ValueAnimator;Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "type"    # Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .prologue
    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mPendingAnimationType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .line 283
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mRunningAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mRunningAnimation:Landroid/animation/ValueAnimator;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mRunningAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mRunningAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 287
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup;->mRunningAnimation:Landroid/animation/ValueAnimator;

    .line 288
    sget-object v0, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    if-ne p2, v0, :cond_1

    .line 289
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 281
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->onDismiss()V

    .line 163
    return-void
.end method

.method public dismissChildPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z
    .locals 7
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 176
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 177
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SubScreenPopup;->shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SubScreenPopup;->getTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;)I

    move-result v1

    .line 179
    .local v1, "transY":I
    const-string/jumbo v2, "V6ManualPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dismissChildPopup: transY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",popup="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-nez v1, :cond_2

    .line 181
    sget-object v2, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    iput-object v2, p0, Lcom/android/camera/ui/SubScreenPopup;->mPendingAnimationType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .line 182
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenPopup;->addOnPreDrawListener()Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-ne v2, p1, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :cond_0
    invoke-virtual {p1, v5}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss(Z)V

    .line 198
    .end local v1    # "transY":I
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 189
    .restart local v1    # "transY":I
    :cond_2
    sget-object v2, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/SubScreenPopup;->setupAnimation(ILcom/android/camera/ui/SubScreenPopup$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 190
    .local v0, "animator":Landroid/animation/ValueAnimator;
    sget-object v2, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/SubScreenPopup;->startAnimation(Landroid/animation/ValueAnimator;Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    goto :goto_0

    .line 193
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "transY":I
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-ne v2, p1, :cond_4

    .line 194
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :cond_4
    invoke-virtual {p1, v5}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss(Z)V

    goto :goto_0

    .line 200
    :cond_5
    return v5
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 7
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 85
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenPopup;->getItemKeys()Ljava/util/List;

    move-result-object v2

    .line 86
    .local v2, "itemKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/SubScreenPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    iget-object v5, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/SettingView;->initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;ILcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onDestroy()V

    .line 171
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenPopup;->removeOnPreDrawListener()Z

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->onDestroy()V

    .line 169
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    .line 71
    const v0, 0x7f0c005a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SubScreenPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;

    .line 72
    const v0, 0x7f0c005b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SubScreenPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSubPopupParent:Landroid/widget/FrameLayout;

    .line 73
    const v0, 0x7f0c005c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SubScreenPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SettingView;

    iput-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    .line 68
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->reloadPreferences()V

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SettingView;->setPressed(Ljava/lang/String;Z)V

    .line 127
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SettingView;->setEnabled(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/SettingView;->setOrientation(IZ)V

    .line 77
    return-void
.end method

.method public showChildPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .locals 5
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    const/4 v3, 0x0

    .line 144
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 146
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-virtual {p1, v3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    .line 148
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SubScreenPopup;->shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SubScreenPopup;->getTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;)I

    move-result v1

    .line 150
    .local v1, "transY":I
    const-string/jumbo v2, "V6ManualPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showChildPopup: transY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",popup="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-nez v1, :cond_1

    .line 152
    sget-object v2, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_UP_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    iput-object v2, p0, Lcom/android/camera/ui/SubScreenPopup;->mPendingAnimationType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .line 153
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenPopup;->addOnPreDrawListener()Z

    .line 143
    .end local v1    # "transY":I
    :cond_0
    :goto_0
    return-void

    .line 155
    .restart local v1    # "transY":I
    :cond_1
    sget-object v2, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_UP_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/SubScreenPopup;->setupAnimation(ILcom/android/camera/ui/SubScreenPopup$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 156
    .local v0, "animator":Landroid/animation/ValueAnimator;
    sget-object v2, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_UP_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/SubScreenPopup;->startAnimation(Landroid/animation/ValueAnimator;Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    goto :goto_0
.end method

.method public updateBackground()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->setBackgroundResource(I)V

    .line 89
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup;->mSettingView:Lcom/android/camera/ui/SettingView;

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->setBackgroundResource(I)V

    goto :goto_0
.end method
