.class public final Landroid/media/RoutingChangeInfo;
.super Ljava/lang/Object;
.source "RoutingChangeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RoutingChangeInfo$SuggestionProviderFlags;,
        Landroid/media/RoutingChangeInfo$EntryPoint;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/RoutingChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ENTRY_POINT_LOCAL_ROUTER_UNSPECIFIED:I = 0x3

.field public static final blacklist ENTRY_POINT_PROXY_ROUTER_UNSPECIFIED:I = 0x4

.field public static final blacklist ENTRY_POINT_SYSTEM_MEDIA_CONTROLS:I = 0x2

.field public static final blacklist ENTRY_POINT_SYSTEM_OUTPUT_SWITCHER:I = 0x1

.field public static final blacklist ENTRY_POINT_TV_OUTPUT_SWITCHER:I = 0x5

.field public static final blacklist SUGGESTION_PROVIDER_DEVICE_SUGGESTION_APP:I = 0x2

.field public static final blacklist SUGGESTION_PROVIDER_DEVICE_SUGGESTION_OTHER:I = 0x4

.field public static final blacklist SUGGESTION_PROVIDER_RLP:I = 0x1


# instance fields
.field private final blacklist mEntryPoint:I

.field private final blacklist mIsSuggested:Z

.field private final blacklist mSuggestionProviderFlags:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 138
    new-instance v0, Landroid/media/RoutingChangeInfo$1;

    invoke-direct {v0}, Landroid/media/RoutingChangeInfo$1;-><init>()V

    sput-object v0, Landroid/media/RoutingChangeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IZ)V
    .registers 4

    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/RoutingChangeInfo;-><init>(IZI)V

    .line 153
    return-void
.end method

.method public constructor blacklist <init>(IZI)V
    .registers 4

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput p1, p0, Landroid/media/RoutingChangeInfo;->mEntryPoint:I

    .line 160
    iput-boolean p2, p0, Landroid/media/RoutingChangeInfo;->mIsSuggested:Z

    .line 161
    iput p3, p0, Landroid/media/RoutingChangeInfo;->mSuggestionProviderFlags:I

    .line 162
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RoutingChangeInfo;->mEntryPoint:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/RoutingChangeInfo;->mIsSuggested:Z

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/media/RoutingChangeInfo;->mSuggestionProviderFlags:I

    .line 168
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/RoutingChangeInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/RoutingChangeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 184
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 185
    return v0

    .line 188
    :cond_4
    instance-of v1, p1, Landroid/media/RoutingChangeInfo;

    if-eqz v1, :cond_29

    move-object v1, p1

    check-cast v1, Landroid/media/RoutingChangeInfo;

    .line 192
    const/4 v2, 0x1

    if-ne p1, p0, :cond_f

    .line 193
    return v2

    .line 196
    :cond_f
    invoke-virtual {v1}, Landroid/media/RoutingChangeInfo;->getEntryPoint()I

    move-result p1

    iget v3, p0, Landroid/media/RoutingChangeInfo;->mEntryPoint:I

    if-ne p1, v3, :cond_27

    .line 197
    invoke-virtual {v1}, Landroid/media/RoutingChangeInfo;->isSuggested()Z

    move-result p1

    iget-boolean v3, p0, Landroid/media/RoutingChangeInfo;->mIsSuggested:Z

    if-ne p1, v3, :cond_27

    iget p1, v1, Landroid/media/RoutingChangeInfo;->mSuggestionProviderFlags:I

    iget v1, p0, Landroid/media/RoutingChangeInfo;->mSuggestionProviderFlags:I

    if-ne p1, v1, :cond_27

    move v0, v2

    goto :goto_28

    :cond_27
    nop

    .line 196
    :goto_28
    return v0

    .line 189
    :cond_29
    return v0
.end method

.method public blacklist getEntryPoint()I
    .registers 2

    .line 207
    iget v0, p0, Landroid/media/RoutingChangeInfo;->mEntryPoint:I

    return v0
.end method

.method public blacklist getSuggestionProviderFlags()I
    .registers 2

    .line 215
    iget v0, p0, Landroid/media/RoutingChangeInfo;->mSuggestionProviderFlags:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 203
    iget v0, p0, Landroid/media/RoutingChangeInfo;->mEntryPoint:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/RoutingChangeInfo;->mIsSuggested:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, p0, Landroid/media/RoutingChangeInfo;->mSuggestionProviderFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isSuggested()Z
    .registers 2

    .line 211
    iget-boolean v0, p0, Landroid/media/RoutingChangeInfo;->mIsSuggested:Z

    return v0
.end method

.method public blacklist isSuggestedByAnotherApp()Z
    .registers 2

    .line 232
    iget v0, p0, Landroid/media/RoutingChangeInfo;->mSuggestionProviderFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isSuggestedByMediaApp()Z
    .registers 2

    .line 227
    iget v0, p0, Landroid/media/RoutingChangeInfo;->mSuggestionProviderFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isSuggestedByRlp()Z
    .registers 3

    .line 222
    iget v0, p0, Landroid/media/RoutingChangeInfo;->mSuggestionProviderFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 177
    iget p2, p0, Landroid/media/RoutingChangeInfo;->mEntryPoint:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-boolean p2, p0, Landroid/media/RoutingChangeInfo;->mIsSuggested:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 179
    iget p2, p0, Landroid/media/RoutingChangeInfo;->mSuggestionProviderFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    return-void
.end method
