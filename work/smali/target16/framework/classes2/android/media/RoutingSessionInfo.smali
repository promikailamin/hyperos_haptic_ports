.class public final Landroid/media/RoutingSessionInfo;
.super Ljava/lang/Object;
.source "RoutingSessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RoutingSessionInfo$Builder;,
        Landroid/media/RoutingSessionInfo$ReleaseType;,
        Landroid/media/RoutingSessionInfo$TransferReason;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist KEY_GROUP_ROUTE:Ljava/lang/String; = "androidx.mediarouter.media.KEY_GROUP_ROUTE"

.field private static final blacklist KEY_VOLUME_HANDLING:Ljava/lang/String; = "volumeHandling"

.field public static final blacklist RELEASE_TYPE_CASTING:I = 0x1

.field public static final blacklist RELEASE_TYPE_SHARING:I = 0x2

.field public static final blacklist RELEASE_UNSUPPORTED:I = 0x0

.field public static final whitelist TRANSFER_REASON_APP:I = 0x2

.field public static final whitelist TRANSFER_REASON_FALLBACK:I = 0x0

.field public static final whitelist TRANSFER_REASON_SYSTEM_REQUEST:I = 0x1


# instance fields
.field final blacklist mClientPackageName:Ljava/lang/String;

.field final blacklist mControlHints:Landroid/os/Bundle;

.field final blacklist mDeselectableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mIsSystemSession:Z

.field final blacklist mName:Ljava/lang/CharSequence;

.field final blacklist mOriginalId:Ljava/lang/String;

.field final blacklist mOwnerPackageName:Ljava/lang/String;

.field final blacklist mProviderId:Ljava/lang/String;

.field private final blacklist mReleaseType:I

.field final blacklist mSelectableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mSelectedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mTransferInitiatorPackageName:Ljava/lang/String;

.field final blacklist mTransferInitiatorUserHandle:Landroid/os/UserHandle;

.field final blacklist mTransferReason:I

.field final blacklist mTransferableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mVolume:I

.field final blacklist mVolumeHandling:I

.field final blacklist mVolumeMax:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmReleaseType(Landroid/media/RoutingSessionInfo;)I
    .registers 1

    iget p0, p0, Landroid/media/RoutingSessionInfo;->mReleaseType:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Landroid/media/RoutingSessionInfo$1;

    invoke-direct {v0}, Landroid/media/RoutingSessionInfo$1;-><init>()V

    sput-object v0, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/RoutingSessionInfo$Builder;)V
    .registers 4

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const-string v0, "builder must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmOriginalId(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    .line 156
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmName(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    .line 157
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmOwnerPackageName(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    .line 158
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmClientPackageName(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    .line 159
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmProviderId(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    .line 161
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmSelectedRoutes(Landroid/media/RoutingSessionInfo$Builder;)Ljava/util/List;

    move-result-object v0

    .line 162
    invoke-direct {p0, v0}, Landroid/media/RoutingSessionInfo;->convertToUniqueRouteIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    .line 163
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmSelectableRoutes(Landroid/media/RoutingSessionInfo$Builder;)Ljava/util/List;

    move-result-object v0

    .line 164
    invoke-direct {p0, v0}, Landroid/media/RoutingSessionInfo;->convertToUniqueRouteIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 163
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    .line 165
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmDeselectableRoutes(Landroid/media/RoutingSessionInfo$Builder;)Ljava/util/List;

    move-result-object v0

    .line 166
    invoke-direct {p0, v0}, Landroid/media/RoutingSessionInfo;->convertToUniqueRouteIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 165
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    .line 167
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmTransferableRoutes(Landroid/media/RoutingSessionInfo$Builder;)Ljava/util/List;

    move-result-object v0

    .line 168
    invoke-direct {p0, v0}, Landroid/media/RoutingSessionInfo;->convertToUniqueRouteIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 167
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    .line 170
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmVolumeMax(Landroid/media/RoutingSessionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    .line 171
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmVolume(Landroid/media/RoutingSessionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    .line 173
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmIsSystemSession(Landroid/media/RoutingSessionInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/RoutingSessionInfo;->mIsSystemSession:Z

    .line 174
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmVolumeHandling(Landroid/media/RoutingSessionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    .line 176
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmControlHints(Landroid/media/RoutingSessionInfo$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iget v1, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    invoke-static {v0, v1}, Landroid/media/RoutingSessionInfo;->updateVolumeHandlingInHints(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mControlHints:Landroid/os/Bundle;

    .line 177
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmTransferReason(Landroid/media/RoutingSessionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mTransferReason:I

    .line 178
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmTransferInitiatorUserHandle(Landroid/media/RoutingSessionInfo$Builder;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    .line 179
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmTransferInitiatorPackageName(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorPackageName:Ljava/lang/String;

    .line 180
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmReleaseType(Landroid/media/RoutingSessionInfo$Builder;)I

    move-result p1

    iput p1, p0, Landroid/media/RoutingSessionInfo;->mReleaseType:I

    .line 181
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 187
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RoutingSessionInfo;->ensureString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RoutingSessionInfo;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    .line 193
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RoutingSessionInfo;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RoutingSessionInfo;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RoutingSessionInfo;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mControlHints:Landroid/os/Bundle;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/RoutingSessionInfo;->mIsSystemSession:Z

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mTransferReason:I

    .line 206
    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorPackageName:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/media/RoutingSessionInfo;->mReleaseType:I

    .line 209
    return-void
.end method

.method private blacklist convertToUniqueRouteIds(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 634
    const-string v0, "RouteIds cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 637
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 641
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 642
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 643
    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/media/MediaRouter2Utils;->toUniqueId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    goto :goto_1c

    .line 645
    :cond_32
    return-object v0
.end method

.method private static blacklist ensureList(Ljava/util/List;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 240
    if-eqz p0, :cond_7

    .line 241
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 243
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist ensureString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 235
    if-eqz p0, :cond_3

    goto :goto_5

    :cond_3
    const-string p0, ""

    :goto_5
    return-object p0
.end method

.method private static blacklist getHumanReadableReleaseType(I)Ljava/lang/String;
    .registers 1

    .line 616
    packed-switch p0, :pswitch_data_10

    .line 620
    const-string p0, ""

    goto :goto_e

    .line 617
    :pswitch_6
    const-string p0, "RELEASE_TYPE_SHARING"

    goto :goto_e

    .line 618
    :pswitch_9
    const-string p0, "RELEASE_TYPE_CASTING"

    goto :goto_e

    .line 619
    :pswitch_c
    const-string p0, "RELEASE_UNSUPPORTED"

    .line 616
    :goto_e
    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static blacklist updateVolumeHandlingInHints(Landroid/os/Bundle;I)Landroid/os/Bundle;
    .registers 6

    .line 216
    if-eqz p0, :cond_2f

    const-string v0, "androidx.mediarouter.media.KEY_GROUP_ROUTE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 217
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_2f

    const-string v2, "volumeHandling"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 220
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq p1, v3, :cond_2f

    .line 222
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 223
    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 226
    return-object p1

    .line 230
    :cond_2f
    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RoutingSessionInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mOriginalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mOwnerPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mClientPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mProviderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSelectedRoutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSelectableRoutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mDeselectableRoutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTransferableRoutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    iget v2, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    iget v3, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    invoke-static {v1, v2, v3}, Landroid/media/MediaRoute2Info;->getVolumeString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mControlHints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mControlHints:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsSystemSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/RoutingSessionInfo;->mIsSystemSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTransferReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/RoutingSessionInfo;->mTransferReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mtransferInitiatorUserHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mtransferInitiatorPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "mReleaseType="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/media/RoutingSessionInfo;->mReleaseType:I

    invoke-static {v0}, Landroid/media/RoutingSessionInfo;->getHumanReadableReleaseType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 526
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 527
    return v0

    .line 530
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 531
    return v1

    .line 533
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 534
    return v0

    .line 537
    :cond_13
    check-cast p1, Landroid/media/RoutingSessionInfo;

    .line 538
    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    .line 539
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    .line 540
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    .line 541
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    .line 542
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    iget-object v3, p1, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    .line 543
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    iget-object v3, p1, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    .line 544
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    iget-object v3, p1, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    .line 545
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    iget-object v3, p1, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    .line 546
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    iget v2, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    iget v3, p1, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    if-ne v2, v3, :cond_a3

    iget v2, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    iget v3, p1, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    if-ne v2, v3, :cond_a3

    iget v2, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    iget v3, p1, Landroid/media/RoutingSessionInfo;->mVolume:I

    if-ne v2, v3, :cond_a3

    iget v2, p0, Landroid/media/RoutingSessionInfo;->mTransferReason:I

    iget v3, p1, Landroid/media/RoutingSessionInfo;->mTransferReason:I

    if-ne v2, v3, :cond_a3

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    iget-object v3, p1, Landroid/media/RoutingSessionInfo;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    .line 551
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/RoutingSessionInfo;->mTransferInitiatorPackageName:Ljava/lang/String;

    .line 552
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    iget v2, p0, Landroid/media/RoutingSessionInfo;->mReleaseType:I

    iget p1, p1, Landroid/media/RoutingSessionInfo;->mReleaseType:I

    if-ne v2, p1, :cond_a3

    move v0, v1

    goto :goto_a4

    :cond_a3
    nop

    .line 538
    :goto_a4
    return v0
.end method

.method public whitelist getClientPackageName()Ljava/lang/String;
    .registers 2

    .line 299
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getControlHints()Landroid/os/Bundle;
    .registers 2

    .line 426
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mControlHints:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getDeselectableRoutes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 3

    .line 257
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 258
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/media/MediaRouter2Utils;->toUniqueId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 260
    :cond_11
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .registers 2

    .line 269
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getOriginalId()Ljava/lang/String;
    .registers 2

    .line 282
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOwnerPackageName()Ljava/lang/String;
    .registers 2

    .line 291
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProviderId()Ljava/lang/String;
    .registers 2

    .line 309
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getReleaseType()I
    .registers 2

    .line 464
    iget v0, p0, Landroid/media/RoutingSessionInfo;->mReleaseType:I

    return v0
.end method

.method public whitelist getSelectableRoutes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSelectedRoutes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getTransferInitiatorPackageName()Ljava/lang/String;
    .registers 2

    .line 454
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTransferInitiatorUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 448
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist getTransferReason()I
    .registers 2

    .line 442
    iget v0, p0, Landroid/media/RoutingSessionInfo;->mTransferReason:I

    return v0
.end method

.method public whitelist getTransferableRoutes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getVolume()I
    .registers 2

    .line 418
    iget v0, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    return v0
.end method

.method public whitelist getVolumeHandling()I
    .registers 2

    .line 399
    iget v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    return v0
.end method

.method public whitelist getVolumeMax()I
    .registers 2

    .line 406
    iget v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 18

    .line 559
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    iget-object v2, v0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    iget-object v6, v0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    iget-object v7, v0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    iget-object v8, v0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    iget-object v9, v0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    iget v10, v0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    .line 569
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, v0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    .line 570
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, v0, Landroid/media/RoutingSessionInfo;->mVolume:I

    .line 571
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v0, Landroid/media/RoutingSessionInfo;->mTransferReason:I

    .line 572
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    iget-object v15, v0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorPackageName:Ljava/lang/String;

    iget v0, v0, Landroid/media/RoutingSessionInfo;->mReleaseType:I

    .line 575
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v1 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    .line 559
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isSystemSession()Z
    .registers 2

    .line 435
    iget-boolean v0, p0, Landroid/media/RoutingSessionInfo;->mIsSystemSession:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    const-string v1, "RoutingSessionInfo{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 582
    const-string v1, "sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 583
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 584
    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 585
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 586
    const-string v1, ", clientPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 587
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 588
    const-string v1, ", selectedRoutes={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 589
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 590
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 591
    const-string v3, ", selectableRoutes={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 592
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 594
    const-string v3, ", deselectableRoutes={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 595
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 597
    const-string v3, ", transferableRoutes={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 598
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getTransferableRoutes()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 599
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 600
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    iget v2, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    iget v3, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    .line 601
    invoke-static {v1, v2, v3}, Landroid/media/MediaRoute2Info;->getVolumeString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 602
    const-string v1, ", transferReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 603
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getTransferReason()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 604
    const-string v1, ", transferInitiatorUserHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 605
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 606
    const-string v1, ", transferInitiatorPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 607
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 608
    const-string v1, ", releaseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 609
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getReleaseType()I

    move-result v1

    invoke-static {v1}, Landroid/media/RoutingSessionInfo;->getHumanReadableReleaseType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 610
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 474
    iget-object p2, p0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 475
    iget-object p2, p0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 476
    iget-object p2, p0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 477
    iget-object p2, p0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    iget-object p2, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    iget-object p2, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 480
    iget-object p2, p0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 481
    iget-object p2, p0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 482
    iget-object p2, p0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 483
    iget p2, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget p2, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget p2, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget-object p2, p0, Landroid/media/RoutingSessionInfo;->mControlHints:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 487
    iget-boolean p2, p0, Landroid/media/RoutingSessionInfo;->mIsSystemSession:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 488
    iget p2, p0, Landroid/media/RoutingSessionInfo;->mTransferReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    iget-object p2, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    invoke-static {p2, p1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V

    .line 490
    iget-object p2, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 491
    iget p2, p0, Landroid/media/RoutingSessionInfo;->mReleaseType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    return-void
.end method
