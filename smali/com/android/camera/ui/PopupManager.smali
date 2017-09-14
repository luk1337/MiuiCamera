.class public Lcom/android/camera/ui/PopupManager;
.super Ljava/lang/Object;
.source "PopupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
    }
.end annotation


# static fields
.field private static sMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/camera/ui/PopupManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLastListener:Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    sput-object v0, Lcom/android/camera/ui/PopupManager;->sMap:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PopupManager;->mListeners:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    sget-object v1, Lcom/android/camera/ui/PopupManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PopupManager;

    .line 83
    .local v0, "instance":Lcom/android/camera/ui/PopupManager;
    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/android/camera/ui/PopupManager;

    .end local v0    # "instance":Lcom/android/camera/ui/PopupManager;
    invoke-direct {v0}, Lcom/android/camera/ui/PopupManager;-><init>()V

    .line 85
    .restart local v0    # "instance":Lcom/android/camera/ui/PopupManager;
    sget-object v1, Lcom/android/camera/ui/PopupManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    return-object v0
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    sget-object v1, Lcom/android/camera/ui/PopupManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PopupManager;

    .line 92
    .local v0, "instance":Lcom/android/camera/ui/PopupManager;
    if-eqz v0, :cond_0

    .line 93
    sget-object v1, Lcom/android/camera/ui/PopupManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public clearRecoveredPopupListenerIfNeeded(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/PopupManager;->mLastListener:Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;

    if-ne v0, p1, :cond_0

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/PopupManager;->mLastListener:Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;

    .line 61
    :cond_0
    return-void
.end method

.method public getLastOnOtherPopupShowedListener()Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/PopupManager;->mLastListener:Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;

    return-object v0
.end method

.method public notifyDismissPopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/PopupManager;->mLastListener:Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/PopupManager;->mLastListener:Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;

    invoke-interface {v0}, Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;->recoverIfNeeded()V

    .line 57
    iput-object v1, p0, Lcom/android/camera/ui/PopupManager;->mLastListener:Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;

    .line 54
    :cond_0
    return-void
.end method

.method public notifyShowPopup(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "level"    # I

    .prologue
    .line 47
    iget-object v2, p0, Lcom/android/camera/ui/PopupManager;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;

    .local v0, "listener":Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
    move-object v2, v0

    .line 48
    check-cast v2, Landroid/view/View;

    if-eq v2, p1, :cond_0

    invoke-interface {v0, p2}, Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;->onOtherPopupShowed(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    iput-object v0, p0, Lcom/android/camera/ui/PopupManager;->mLastListener:Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;

    goto :goto_0

    .line 46
    .end local v0    # "listener":Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
    :cond_1
    return-void
.end method

.method public removeOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/PopupManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/PopupManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/PopupManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    return-void
.end method
