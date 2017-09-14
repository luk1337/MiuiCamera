.class Lcom/android/camera/ui/UIController$4;
.super Ljava/lang/Object;
.source "UIController.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/UIController;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/UIController;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/UIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/UIController;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/ui/UIController$4;->this$0:Lcom/android/camera/ui/UIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v0

    .line 93
    .local v0, "insetBottom":I
    iget-object v3, p0, Lcom/android/camera/ui/UIController$4;->this$0:Lcom/android/camera/ui/UIController;

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getBottomControlLowerGroup()Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 94
    .local v1, "lowerControlGroup":Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 95
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 96
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 98
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/android/camera/ui/UIController$4;->this$0:Lcom/android/camera/ui/UIController;

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v5

    .line 100
    iget-object v3, p0, Lcom/android/camera/ui/UIController$4;->this$0:Lcom/android/camera/ui/UIController;

    iget-object v3, v3, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080004

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 101
    if-lez v0, :cond_1

    move v3, v4

    .line 100
    :goto_0
    sub-int v3, v6, v3

    .line 99
    invoke-virtual {v5, v4, v3}, Lcom/android/camera/ui/V6ModeExitView;->setLayoutParameters(II)V

    .line 104
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v3

    return-object v3

    .line 101
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/UIController$4;->this$0:Lcom/android/camera/ui/UIController;

    iget-object v3, v3, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/camera/Util;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    goto :goto_0
.end method
