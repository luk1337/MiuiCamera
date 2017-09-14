.class public Lcom/android/camera/ui/V6RelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "V6RelativeLayout.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field protected mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    .line 19
    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 70
    iget-object v2, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 71
    .local v0, "i":Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 72
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0    # "i":Landroid/view/View;
    invoke-interface {v0, p1}, Lcom/android/camera/ui/V6FunctionUI;->enableControls(Z)V

    goto :goto_0

    .line 69
    :cond_1
    return-void
.end method

.method public findChildrenById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 25
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 26
    iget-object v1, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_0
    return-object v0
.end method

.method public onCameraOpen()V
    .locals 3

    .prologue
    .line 61
    iget-object v2, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 62
    .local v0, "i":Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 63
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0    # "i":Landroid/view/View;
    invoke-interface {v0}, Lcom/android/camera/ui/V6FunctionUI;->onCameraOpen()V

    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 33
    iget-object v2, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 34
    .local v0, "i":Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 35
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0    # "i":Landroid/view/View;
    invoke-interface {v0}, Lcom/android/camera/ui/V6FunctionUI;->onCreate()V

    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 52
    iget-object v2, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 53
    .local v0, "i":Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 54
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0    # "i":Landroid/view/View;
    invoke-interface {v0}, Lcom/android/camera/ui/V6FunctionUI;->onPause()V

    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 42
    iget-object v2, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 43
    .local v0, "i":Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 44
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0    # "i":Landroid/view/View;
    invoke-interface {v0}, Lcom/android/camera/ui/V6FunctionUI;->onResume()V

    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 3
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 101
    iget-object v2, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 102
    .local v0, "i":Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 103
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0    # "i":Landroid/view/View;
    invoke-interface {v0, p1}, Lcom/android/camera/ui/V6FunctionUI;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    goto :goto_0

    .line 100
    :cond_1
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 79
    iget-object v2, p0, Lcom/android/camera/ui/V6RelativeLayout;->mChildren:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 80
    .local v0, "i":Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/Rotatable;

    if-eqz v2, :cond_0

    .line 81
    check-cast v0, Lcom/android/camera/ui/Rotatable;

    .end local v0    # "i":Landroid/view/View;
    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method
