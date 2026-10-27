.class public Landroid/app/servertransaction/ConfigurationChangeItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "ConfigurationChangeItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ConfigurationChangeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mDeviceId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Landroid/app/servertransaction/ConfigurationChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ConfigurationChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ConfigurationChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/Configuration;I)V
    .registers 4

    .line 42
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 43
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 44
    iput p2, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    .line 45
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 69
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 70
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    .line 72
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ConfigurationChangeItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ConfigurationChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 87
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 88
    return v0

    .line 90
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 93
    :cond_12
    check-cast p1, Landroid/app/servertransaction/ConfigurationChangeItem;

    .line 94
    iget-object v2, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p1, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget v2, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    iget p1, p1, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    if-ne v2, p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    .line 91
    :cond_27
    :goto_27
    return v1
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 4

    .line 56
    iget-object p2, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    invoke-virtual {p1, p2, v0}, Landroid/app/ClientTransactionHandler;->handleConfigurationChanged(Landroid/content/res/Configuration;I)V

    .line 57
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 100
    nop

    .line 101
    const/16 v0, 0x20f

    iget v1, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    add-int/2addr v0, v1

    .line 102
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    return v0
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;)V
    .registers 3

    .line 49
    iget-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v0}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/content/res/Configuration;)V

    .line 50
    iget-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/app/ClientTransactionHandler;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 51
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigurationChangeItem{deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 64
    iget-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 65
    iget p2, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return-void
.end method
