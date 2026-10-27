.class Landroid/widget/RemoteViews$ViewPaddingAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPaddingAction"
.end annotation


# instance fields
.field greylist-max-o bottom:I

.field greylist-max-o left:I

.field greylist-max-o right:I

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;

.field greylist-max-o top:I


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;IIIII)V
    .registers 7
    .param p2, "viewId"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .line 3028
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3029
    iput p2, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->viewId:I

    .line 3030
    iput p3, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    .line 3031
    iput p4, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    .line 3032
    iput p5, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    .line 3033
    iput p6, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    .line 3034
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 3036
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3037
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->viewId:I

    .line 3038
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    .line 3039
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    .line 3040
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    .line 3041
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    .line 3042
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 10
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 3055
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3056
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_9

    return-void

    .line 3057
    :cond_9
    iget v1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    iget v2, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    iget v3, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    iget v4, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 3058
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 3062
    const/16 v0, 0xe

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3045
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3046
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3047
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3048
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3049
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3050
    return-void
.end method
