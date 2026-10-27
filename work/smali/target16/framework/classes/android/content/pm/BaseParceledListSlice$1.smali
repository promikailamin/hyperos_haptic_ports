.class Landroid/content/pm/BaseParceledListSlice$1;
.super Landroid/os/Binder;
.source "BaseParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/BaseParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/pm/BaseParceledListSlice;

.field final synthetic blacklist val$N:I

.field final synthetic blacklist val$callFlags:I

.field final synthetic blacklist val$listElementClass:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/BaseParceledListSlice;ILjava/lang/Class;I)V
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

    .line 197
    iput-object p1, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    iput p2, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$N:I

    iput-object p3, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    iput p4, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$callFlags:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 202
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 203
    :cond_8
    iget-object p1, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    invoke-static {p1}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$fgetmList(Landroid/content/pm/BaseParceledListSlice;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b7

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 215
    const/4 p2, 0x0

    :try_start_15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    :goto_18
    iget p4, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$N:I
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_1a} :catch_b0

    const-string v1, "ParceledListSlice"

    const/high16 v2, 0x10000

    if-ge p1, p4, :cond_7b

    :try_start_20
    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result p4

    if-ge p4, v2, :cond_7b

    .line 221
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result p4

    .line 225
    iget-object v2, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    invoke-static {v2}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$fgetmList(Landroid/content/pm/BaseParceledListSlice;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 226
    iget-object v3, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$smverifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 227
    iget-object v3, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    iget v4, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$callFlags:I

    invoke-virtual {v3, v2, p3, v4}, Landroid/content/pm/BaseParceledListSlice;->writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    sub-int/2addr v2, p4

    .line 230
    invoke-static {}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$sfgetWARN_ELM_SIZE()I

    move-result p4

    if-lt v2, p4, :cond_78

    .line 231
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Element #"

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v3, " is "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v2, " bytes."

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_78
    add-int/lit8 p1, p1, 0x1

    .line 236
    goto :goto_18

    .line 237
    :cond_7b
    iget p4, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$N:I

    if-ge p1, p4, :cond_84

    .line 239
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_89

    .line 242
    :cond_84
    iget-object p1, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    invoke-static {p1, p2}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$fputmList(Landroid/content/pm/BaseParceledListSlice;Ljava/util/List;)V

    .line 244
    :goto_89
    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result p1

    invoke-static {}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$sfgetWARN_ELM_SIZE()I

    move-result p4

    add-int/2addr p4, v2

    if-lt p1, p4, :cond_ae

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Overly large reply size: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_ae} :catch_b0

    .line 251
    :cond_ae
    nop

    .line 252
    return v0

    .line 247
    :catch_b0
    move-exception p1

    .line 249
    iget-object p3, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    invoke-static {p3, p2}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$fputmList(Landroid/content/pm/BaseParceledListSlice;Ljava/util/List;)V

    .line 250
    throw p1

    .line 204
    :cond_b7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attempt to transfer null list, did transfer finish?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
