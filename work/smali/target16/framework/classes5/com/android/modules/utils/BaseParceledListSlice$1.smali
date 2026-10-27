.class Lcom/android/modules/utils/BaseParceledListSlice$1;
.super Landroid/os/Binder;
.source "BaseParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/modules/utils/BaseParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/modules/utils/BaseParceledListSlice;

.field final synthetic blacklist val$N:I

.field final synthetic blacklist val$callFlags:I

.field final synthetic blacklist val$listElementClass:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Lcom/android/modules/utils/BaseParceledListSlice;ILjava/lang/Class;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->this$0:Lcom/android/modules/utils/BaseParceledListSlice;

    iput p2, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$N:I

    iput-object p3, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    iput p4, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$callFlags:I

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

    .line 177
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 180
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 181
    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$sfgetDEBUG()Z

    move-result p2

    const-string p4, " of "

    if-eqz p2, :cond_38

    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing more @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$N:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_38
    :goto_38
    iget p2, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$N:I

    if-ge p1, p2, :cond_9a

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result p2

    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$sfgetMAX_IPC_SIZE()I

    move-result v1

    if-ge p2, v1, :cond_9a

    .line 183
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object p2, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->this$0:Lcom/android/modules/utils/BaseParceledListSlice;

    invoke-static {p2}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$fgetmList(Lcom/android/modules/utils/BaseParceledListSlice;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 186
    iget-object v1, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$smverifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 187
    iget-object v1, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->this$0:Lcom/android/modules/utils/BaseParceledListSlice;

    iget v2, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$callFlags:I

    invoke-virtual {v1, p2, p3, v2}, Lcom/android/modules/utils/BaseParceledListSlice;->writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 189
    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$sfgetDEBUG()Z

    move-result p2

    if-eqz p2, :cond_97

    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrote extra #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->this$0:Lcom/android/modules/utils/BaseParceledListSlice;

    invoke-static {v2}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$fgetmList(Lcom/android/modules/utils/BaseParceledListSlice;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_97
    add-int/lit8 p1, p1, 0x1

    .line 191
    goto :goto_38

    .line 192
    :cond_9a
    iget p2, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$N:I

    if-ge p1, p2, :cond_cc

    .line 193
    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$sfgetDEBUG()Z

    move-result p2

    if-eqz p2, :cond_c8

    invoke-static {}, Lcom/android/modules/utils/BaseParceledListSlice;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Breaking @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p4, p0, Lcom/android/modules/utils/BaseParceledListSlice$1;->val$N:I

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_c8
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    :cond_cc
    return v0
.end method
