.class public final Landroid/app/AppOpsManager$NotedOp;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotedOp"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$NotedOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mMessage:Ljava/lang/String;

.field private final blacklist mOp:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mShouldCollectAsyncNotedOp:Z

.field private final blacklist mShouldCollectMessage:Z

.field private final blacklist mUid:I

.field private final blacklist mVirtualDeviceId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 7874
    new-instance v0, Landroid/app/AppOpsManager$NotedOp$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$NotedOp$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$NotedOp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)V
    .registers 9

    .line 7768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7769
    iput p1, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    .line 7770
    iput p2, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    .line 7771
    iput-object p3, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    .line 7772
    iput-object p4, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    .line 7773
    iput p5, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    .line 7774
    iput-object p6, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    .line 7775
    iput-boolean p7, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    .line 7776
    iput-boolean p8, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    .line 7777
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 7779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7780
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    .line 7781
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    .line 7782
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    .line 7783
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    .line 7784
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    .line 7785
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    .line 7786
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    .line 7787
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    .line 7788
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 7824
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 7841
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 7842
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_53

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_53

    .line 7843
    :cond_12
    check-cast p1, Landroid/app/AppOpsManager$NotedOp;

    .line 7844
    iget v2, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    iget v3, p1, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    if-ne v2, v3, :cond_51

    iget v2, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    iget v3, p1, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    if-ne v2, v3, :cond_51

    iget-object v2, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    .line 7846
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    .line 7847
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget v2, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    iget v3, p1, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    if-ne v2, v3, :cond_51

    iget-object v2, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    .line 7849
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-boolean v2, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    iget-boolean v3, p1, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    if-ne v2, v3, :cond_51

    iget-boolean v2, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    iget-boolean p1, p1, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    if-ne v2, p1, :cond_51

    goto :goto_52

    :cond_51
    move v0, v1

    .line 7844
    :goto_52
    return v0

    .line 7842
    :cond_53
    :goto_53
    return v1
.end method

.method public blacklist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 7803
    iget-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMessage()Ljava/lang/String;
    .registers 2

    .line 7811
    iget-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOp()I
    .registers 2

    .line 7791
    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 7799
    iget-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getShouldCollectAsyncNotedOp()Z
    .registers 2

    .line 7815
    iget-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    return v0
.end method

.method public blacklist getShouldCollectMessage()Z
    .registers 2

    .line 7819
    iget-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    return v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 7795
    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    return v0
.end method

.method public blacklist getVirtualDeviceId()I
    .registers 2

    .line 7807
    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 7856
    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    .line 7857
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 7856
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 7862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotedOp{mOp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAttributionTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVirtualDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShouldCollectAsyncNotedOp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShouldCollectMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 7829
    iget p2, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7830
    iget p2, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7831
    iget-object p2, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7832
    iget-object p2, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7833
    iget p2, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7834
    iget-object p2, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7835
    iget-boolean p2, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7836
    iget-boolean p2, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7837
    return-void
.end method
