.class Lcom/android/camera/ui/SkinBeautyButton$2;
.super Ljava/lang/Object;
.source "SkinBeautyButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SkinBeautyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SkinBeautyButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SkinBeautyButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/SkinBeautyButton;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/camera/ui/SkinBeautyButton$2;->this$0:Lcom/android/camera/ui/SkinBeautyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 207
    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p5, Ljava/lang/Boolean;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    :goto_0
    return v1

    .line 211
    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton$2;->this$0:Lcom/android/camera/ui/SkinBeautyButton;

    invoke-static {v0}, Lcom/android/camera/ui/SkinBeautyButton;->-wrap1(Lcom/android/camera/ui/SkinBeautyButton;)V

    .line 213
    return v1

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton$2;->this$0:Lcom/android/camera/ui/SkinBeautyButton;

    invoke-static {v0}, Lcom/android/camera/ui/SkinBeautyButton;->-wrap0(Lcom/android/camera/ui/SkinBeautyButton;)V

    .line 216
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton$2;->this$0:Lcom/android/camera/ui/SkinBeautyButton;

    invoke-static {v0}, Lcom/android/camera/ui/SkinBeautyButton;->-wrap1(Lcom/android/camera/ui/SkinBeautyButton;)V

    goto :goto_0
.end method
