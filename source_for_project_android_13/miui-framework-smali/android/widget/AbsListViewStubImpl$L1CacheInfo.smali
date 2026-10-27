.class Landroid/widget/AbsListViewStubImpl$L1CacheInfo;
.super Ljava/lang/Object;
.source "AbsListViewStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListViewStubImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "L1CacheInfo"
.end annotation


# instance fields
.field private blacklist mL1CacheView:Landroid/view/View;

.field private blacklist mL2CacheView:Landroid/view/View;

.field private blacklist mPosition:I

.field final synthetic blacklist this$0:Landroid/widget/AbsListViewStubImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/AbsListViewStubImpl;ILandroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "this$0"    # Landroid/widget/AbsListViewStubImpl;
    .param p2, "position"    # I
    .param p3, "l1CacheView"    # Landroid/view/View;
    .param p4, "l2CacheView"    # Landroid/view/View;

    .line 148
    iput-object p1, p0, Landroid/widget/AbsListViewStubImpl$L1CacheInfo;->this$0:Landroid/widget/AbsListViewStubImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput p2, p0, Landroid/widget/AbsListViewStubImpl$L1CacheInfo;->mPosition:I

    .line 150
    iput-object p3, p0, Landroid/widget/AbsListViewStubImpl$L1CacheInfo;->mL1CacheView:Landroid/view/View;

    .line 151
    iput-object p4, p0, Landroid/widget/AbsListViewStubImpl$L1CacheInfo;->mL2CacheView:Landroid/view/View;

    .line 152
    return-void
.end method


# virtual methods
.method public blacklist getL1CacheView()Landroid/view/View;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/widget/AbsListViewStubImpl$L1CacheInfo;->mL1CacheView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getL2CacheView()Landroid/view/View;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/widget/AbsListViewStubImpl$L1CacheInfo;->mL2CacheView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getPosition()I
    .registers 2

    .line 155
    iget v0, p0, Landroid/widget/AbsListViewStubImpl$L1CacheInfo;->mPosition:I

    return v0
.end method
