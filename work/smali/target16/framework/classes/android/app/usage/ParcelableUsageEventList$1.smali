.class Landroid/app/usage/ParcelableUsageEventList$1;
.super Landroid/os/Binder;
.source "ParcelableUsageEventList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/usage/ParcelableUsageEventList;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/usage/ParcelableUsageEventList;

.field final synthetic blacklist val$N:I

.field final synthetic blacklist val$callFlags:I


# direct methods
.method constructor blacklist <init>(Landroid/app/usage/ParcelableUsageEventList;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 136
    iput-object p1, p0, Landroid/app/usage/ParcelableUsageEventList$1;->this$0:Landroid/app/usage/ParcelableUsageEventList;

    iput p2, p0, Landroid/app/usage/ParcelableUsageEventList$1;->val$N:I

    iput p3, p0, Landroid/app/usage/ParcelableUsageEventList$1;->val$callFlags:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 142
    :cond_8
    iget-object p1, p0, Landroid/app/usage/ParcelableUsageEventList$1;->this$0:Landroid/app/usage/ParcelableUsageEventList;

    invoke-static {p1}, Landroid/app/usage/ParcelableUsageEventList;->-$$Nest$fgetmList(Landroid/app/usage/ParcelableUsageEventList;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_56

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 154
    const/4 p2, 0x0

    :try_start_15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    nop

    .line 156
    :goto_19
    iget p4, p0, Landroid/app/usage/ParcelableUsageEventList$1;->val$N:I

    if-ge p1, p4, :cond_3f

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result p4

    const/high16 v1, 0x10000

    if-ge p4, v1, :cond_3f

    .line 157
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object p4, p0, Landroid/app/usage/ParcelableUsageEventList$1;->this$0:Landroid/app/usage/ParcelableUsageEventList;

    invoke-static {p4}, Landroid/app/usage/ParcelableUsageEventList;->-$$Nest$fgetmList(Landroid/app/usage/ParcelableUsageEventList;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/usage/UsageEvents$Event;

    .line 160
    iget-object v1, p0, Landroid/app/usage/ParcelableUsageEventList$1;->this$0:Landroid/app/usage/ParcelableUsageEventList;

    iget v2, p0, Landroid/app/usage/ParcelableUsageEventList$1;->val$callFlags:I

    invoke-static {v1, p4, p3, v2}, Landroid/app/usage/ParcelableUsageEventList;->-$$Nest$mwriteEventToParcel(Landroid/app/usage/ParcelableUsageEventList;Landroid/app/usage/UsageEvents$Event;Landroid/os/Parcel;I)V

    .line 165
    add-int/lit8 p1, p1, 0x1

    .line 166
    nop

    .line 167
    goto :goto_19

    .line 168
    :cond_3f
    iget p4, p0, Landroid/app/usage/ParcelableUsageEventList$1;->val$N:I

    if-ge p1, p4, :cond_48

    .line 173
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4d

    .line 176
    :cond_48
    iget-object p1, p0, Landroid/app/usage/ParcelableUsageEventList$1;->this$0:Landroid/app/usage/ParcelableUsageEventList;

    invoke-static {p1, p2}, Landroid/app/usage/ParcelableUsageEventList;->-$$Nest$fputmList(Landroid/app/usage/ParcelableUsageEventList;Ljava/util/List;)V
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_4d} :catch_4f

    .line 182
    :goto_4d
    nop

    .line 183
    return v0

    .line 178
    :catch_4f
    move-exception p1

    .line 180
    iget-object p3, p0, Landroid/app/usage/ParcelableUsageEventList$1;->this$0:Landroid/app/usage/ParcelableUsageEventList;

    invoke-static {p3, p2}, Landroid/app/usage/ParcelableUsageEventList;->-$$Nest$fputmList(Landroid/app/usage/ParcelableUsageEventList;Ljava/util/List;)V

    .line 181
    throw p1

    .line 143
    :cond_56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attempt to transfer null list, did transfer finish?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
