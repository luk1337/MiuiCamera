.class public Lcom/android/camera/ui/V6ModeExitView;
.super Landroid/widget/LinearLayout;
.source "V6ModeExitView.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mCurrentKey:Ljava/lang/String;

.field private mExitButton:Lcom/android/camera/ui/ExitButton;

.field private mVisible:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/V6ModeExitView;)Lcom/android/camera/ui/ExitButton;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    .line 21
    return-void
.end method


# virtual methods
.method public clearExitButtonClickListener(Z)V
    .locals 2
    .param p1, "executeClick"    # Z

    .prologue
    const/4 v1, 0x0

    .line 106
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/ExitButton;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/ExitButton;->callOnClick()Z

    .line 109
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 110
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 105
    return-void
.end method

.method public enableControls(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6ModeExitView;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ExitButton;->setEnabled(Z)V

    .line 151
    return-void
.end method

.method public getExitButton()Lcom/android/camera/ui/ExitButton;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    .line 169
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setVisibility(I)V

    .line 166
    :cond_0
    return-void
.end method

.method public isCurrentExitView(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string/jumbo v0, "Camera5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "V6ModeExitView isCurrent key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCurrentKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6ModeExitView;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExitButtonShown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v1}, Lcom/android/camera/ui/ExitButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/ui/V6ModeExitView;->updateBackground()V

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setVisibility(I)V

    .line 123
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->isCurrentExitView(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    .line 118
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 29
    const v0, 0x7f0c0066

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ExitButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    new-instance v1, Lcom/android/camera/ui/V6ModeExitView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/V6ModeExitView$1;-><init>(Lcom/android/camera/ui/V6ModeExitView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ExitButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 27
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ExitButton;->setExpandedAnimation(Z)V

    .line 146
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string/jumbo v0, "Camera6"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "V6ModeExitView setOnClickListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object p2, p0, Lcom/android/camera/ui/V6ModeExitView;->mCurrentKey:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ExitButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method public setExitButtonVisible(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ExitButton;->setAlpha(F)V

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ExitButton;->setVisibility(I)V

    .line 135
    const/16 v0, 0x8

    if-ne v0, p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-static {v0}, Lcom/android/camera/Util;->expandViewTouchDelegate(Landroid/view/View;)V

    .line 130
    :cond_0
    return-void
.end method

.method public setExitContent(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 44
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    iget-object v1, p0, Lcom/android/camera/ui/V6ModeExitView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ExitButton;->setText(Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method

.method public setLayoutParameters(II)V
    .locals 3
    .param p1, "aboveId"    # I
    .param p2, "margin"    # I

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x2

    .line 189
    invoke-virtual {p0}, Lcom/android/camera/ui/V6ModeExitView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 190
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 195
    :goto_0
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 196
    if-eqz p2, :cond_1

    .line 197
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 188
    :goto_1
    return-void

    .line 193
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_1
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 162
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setVisibility(I)V

    .line 173
    :cond_0
    return-void
.end method

.method public updateBackground()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ExitButton;->setBackgroundResource(I)V

    .line 180
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ExitButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public updateExitButton(IZ)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 80
    const-string/jumbo v0, "Camera6"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "V6ModeExitView updateExitButton = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    iget-object v1, p0, Lcom/android/camera/ui/V6ModeExitView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ExitButton;->setText(Ljava/lang/String;)V

    .line 85
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/ExitButton;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    :cond_1
    const/16 v0, 0x8

    .line 85
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    .line 79
    return-void

    .line 86
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
