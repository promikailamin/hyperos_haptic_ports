.class public final Landroid/app/job/JobInfo$TriggerContentUri;
.super Ljava/lang/Object;
.source "JobInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TriggerContentUri"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobInfo$TriggerContentUri$Flags;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/JobInfo$TriggerContentUri;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_NOTIFY_FOR_DESCENDANTS:I = 0x1


# instance fields
.field private final greylist-max-o mFlags:I

.field private final greylist-max-o mUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1234
    new-instance v0, Landroid/app/job/JobInfo$TriggerContentUri$1;

    invoke-direct {v0}, Landroid/app/job/JobInfo$TriggerContentUri$1;-><init>()V

    sput-object v0, Landroid/app/job/JobInfo$TriggerContentUri;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;I)V
    .registers 3

    .line 1185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1186
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    .line 1187
    iput p2, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    .line 1188
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1219
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    .line 1220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    .line 1221
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/job/JobInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1225
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1206
    instance-of v0, p1, Landroid/app/job/JobInfo$TriggerContentUri;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1207
    return v1

    .line 1209
    :cond_6
    check-cast p1, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 1210
    iget-object v0, p1, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget p1, p1, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    iget v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    if-ne p1, v0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 1201
    iget v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    return v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .registers 2

    .line 1194
    iget-object v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1215
    iget-object v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_c
    iget v1, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1230
    iget-object v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1231
    iget p2, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    return-void
.end method
