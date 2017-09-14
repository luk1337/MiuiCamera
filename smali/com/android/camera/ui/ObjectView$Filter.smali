.class Lcom/android/camera/ui/ObjectView$Filter;
.super Ljava/lang/Object;
.source "ObjectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ObjectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Filter"
.end annotation


# instance fields
.field mCurrentValue:I

.field mHoldTimes:I

.field mHoldValue:I

.field final synthetic this$0:Lcom/android/camera/ui/ObjectView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/ObjectView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/ui/ObjectView;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/camera/ui/ObjectView$Filter;->this$0:Lcom/android/camera/ui/ObjectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldValue:I

    .line 215
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/ObjectView;Lcom/android/camera/ui/ObjectView$Filter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ObjectView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ObjectView$Filter;-><init>(Lcom/android/camera/ui/ObjectView;)V

    return-void
.end method

.method private filter(I)I
    .locals 2
    .param p1, "stop"    # I

    .prologue
    const/4 v1, 0x4

    .line 222
    iget v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldValue:I

    if-eq p1, v0, :cond_1

    .line 223
    iput p1, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldValue:I

    .line 224
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldTimes:I

    .line 234
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    return v0

    .line 226
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldTimes:I

    if-ge v0, v1, :cond_2

    .line 227
    iget v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldTimes:I

    .line 229
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldTimes:I

    if-ne v0, v1, :cond_0

    .line 230
    iget v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldValue:I

    iget v1, p0, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    if-eq v0, v1, :cond_0

    .line 231
    iget v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldValue:I

    iput v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    goto :goto_0
.end method


# virtual methods
.method public isBecomeStable(I)Z
    .locals 4
    .param p1, "faceStop"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 243
    iget v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    .line 244
    .local v0, "lastValue":I
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ObjectView$Filter;->filter(I)I

    move-result v1

    .line 246
    .local v1, "stop":I
    if-nez v0, :cond_0

    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public resetState()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    .line 239
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldValue:I

    .line 237
    return-void
.end method
