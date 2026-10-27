.class Landroid/widget/RemoteViews$SetRemoteInputsAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteInputsAction"
.end annotation


# instance fields
.field final greylist-max-o remoteInputs:[Landroid/os/Parcelable;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;I[Landroid/app/RemoteInput;)V
    .registers 4
    .param p2, "viewId"    # I
    .param p3, "remoteInputs"    # [Landroid/app/RemoteInput;

    .line 3260
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3261
    iput p2, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->viewId:I

    .line 3262
    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->remoteInputs:[Landroid/os/Parcelable;

    .line 3263
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 3265
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->viewId:I

    .line 3267
    sget-object p1, Landroid/app/RemoteInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->remoteInputs:[Landroid/os/Parcelable;

    .line 3268
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 8
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 3278
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3279
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_9

    return-void

    .line 3281
    :cond_9
    const v1, 0x1020469

    iget-object v2, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->remoteInputs:[Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 3282
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 3286
    const/16 v0, 0x12

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3271
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3272
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->remoteInputs:[Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3273
    return-void
.end method
