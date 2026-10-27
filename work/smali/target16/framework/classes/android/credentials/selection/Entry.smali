.class public final Landroid/credentials/selection/Entry;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFrameworkExtrasIntent:Landroid/content/Intent;

.field private final blacklist mKey:Ljava/lang/String;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private final blacklist mSlice:Landroid/app/slice/Slice;

.field private final blacklist mSubkey:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 148
    new-instance v0, Landroid/credentials/selection/Entry$1;

    invoke-direct {v0}, Landroid/credentials/selection/Entry$1;-><init>()V

    sput-object v0, Landroid/credentials/selection/Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    .line 57
    sget-object v2, Landroid/app/slice/Slice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/slice/Slice;

    .line 59
    iput-object v0, p0, Landroid/credentials/selection/Entry;->mKey:Ljava/lang/String;

    .line 60
    const-class v0, Landroid/annotation/NonNull;

    iget-object v3, p0, Landroid/credentials/selection/Entry;->mKey:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 61
    iput-object v1, p0, Landroid/credentials/selection/Entry;->mSubkey:Ljava/lang/String;

    .line 62
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/credentials/selection/Entry;->mSubkey:Ljava/lang/String;

    invoke-static {v0, v4, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 63
    iput-object v2, p0, Landroid/credentials/selection/Entry;->mSlice:Landroid/app/slice/Slice;

    .line 64
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/credentials/selection/Entry;->mSlice:Landroid/app/slice/Slice;

    invoke-static {v0, v4, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 65
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/credentials/selection/Entry;->mPendingIntent:Landroid/app/PendingIntent;

    .line 66
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Landroid/credentials/selection/Entry;->mFrameworkExtrasIntent:Landroid/content/Intent;

    .line 67
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/selection/Entry-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/credentials/selection/Entry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;Landroid/content/Intent;)V
    .registers 5

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroid/credentials/selection/Entry;->mKey:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Landroid/credentials/selection/Entry;->mSubkey:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Landroid/credentials/selection/Entry;->mSlice:Landroid/app/slice/Slice;

    .line 92
    iput-object p4, p0, Landroid/credentials/selection/Entry;->mFrameworkExtrasIntent:Landroid/content/Intent;

    .line 93
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFrameworkExtrasIntent()Landroid/content/Intent;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/credentials/selection/Entry;->mFrameworkExtrasIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/credentials/selection/Entry;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSlice()Landroid/app/slice/Slice;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/credentials/selection/Entry;->mSlice:Landroid/app/slice/Slice;

    return-object v0
.end method

.method public whitelist getSubkey()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/credentials/selection/Entry;->mSubkey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 136
    iget-object v0, p0, Landroid/credentials/selection/Entry;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Landroid/credentials/selection/Entry;->mSubkey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Landroid/credentials/selection/Entry;->mSlice:Landroid/app/slice/Slice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 139
    iget-object v0, p0, Landroid/credentials/selection/Entry;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 140
    iget-object v0, p0, Landroid/credentials/selection/Entry;->mFrameworkExtrasIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 141
    return-void
.end method
