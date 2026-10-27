.class public final Landroid/app/HandoffActivityData;
.super Ljava/lang/Object;
.source "HandoffActivityData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/HandoffActivityData$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/HandoffActivityData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mComponentName:Landroid/content/ComponentName;

.field private blacklist mExtras:Landroid/os/PersistableBundle;

.field private blacklist mFallbackUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Landroid/app/HandoffActivityData$1;

    invoke-direct {v0}, Landroid/app/HandoffActivityData$1;-><init>()V

    sput-object v0, Landroid/app/HandoffActivityData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/HandoffActivityData$Builder;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p1}, Landroid/app/HandoffActivityData$Builder;->-$$Nest$fgetmComponentName(Landroid/app/HandoffActivityData$Builder;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/HandoffActivityData;->mComponentName:Landroid/content/ComponentName;

    .line 56
    invoke-static {p1}, Landroid/app/HandoffActivityData$Builder;->-$$Nest$fgetmExtras(Landroid/app/HandoffActivityData$Builder;)Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/HandoffActivityData;->mExtras:Landroid/os/PersistableBundle;

    .line 57
    invoke-static {p1}, Landroid/app/HandoffActivityData$Builder;->-$$Nest$fgetmFallbackUri(Landroid/app/HandoffActivityData$Builder;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroid/app/HandoffActivityData;->mFallbackUri:Landroid/net/Uri;

    .line 58
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/HandoffActivityData$Builder;Landroid/app/HandoffActivityData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/HandoffActivityData;-><init>(Landroid/app/HandoffActivityData$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/HandoffActivityData;->mComponentName:Landroid/content/ComponentName;

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/HandoffActivityData;->mExtras:Landroid/os/PersistableBundle;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 64
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Landroid/app/HandoffActivityData;->mFallbackUri:Landroid/net/Uri;

    .line 66
    :cond_2b
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/HandoffActivityData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/HandoffActivityData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 116
    instance-of v0, p1, Landroid/app/HandoffActivityData;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 117
    check-cast p1, Landroid/app/HandoffActivityData;

    .line 118
    iget-object v0, p0, Landroid/app/HandoffActivityData;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/app/HandoffActivityData;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/app/HandoffActivityData;->mExtras:Landroid/os/PersistableBundle;

    iget-object v2, p1, Landroid/app/HandoffActivityData;->mExtras:Landroid/os/PersistableBundle;

    .line 119
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/app/HandoffActivityData;->mFallbackUri:Landroid/net/Uri;

    iget-object p1, p1, Landroid/app/HandoffActivityData;->mFallbackUri:Landroid/net/Uri;

    .line 120
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    nop

    .line 118
    :goto_28
    return v1

    .line 122
    :cond_29
    return v1
.end method

.method public blacklist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/app/HandoffActivityData;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getExtras()Landroid/os/PersistableBundle;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/app/HandoffActivityData;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public blacklist getFallbackUri()Landroid/net/Uri;
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/app/HandoffActivityData;->mFallbackUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 111
    iget-object v0, p0, Landroid/app/HandoffActivityData;->mComponentName:Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/HandoffActivityData;->mExtras:Landroid/os/PersistableBundle;

    iget-object v2, p0, Landroid/app/HandoffActivityData;->mFallbackUri:Landroid/net/Uri;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 132
    iget-object v0, p0, Landroid/app/HandoffActivityData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 133
    iget-object v0, p0, Landroid/app/HandoffActivityData;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 134
    iget-object v0, p0, Landroid/app/HandoffActivityData;->mFallbackUri:Landroid/net/Uri;

    if-eqz v0, :cond_18

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v0, p0, Landroid/app/HandoffActivityData;->mFallbackUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1c

    .line 138
    :cond_18
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    :goto_1c
    return-void
.end method
