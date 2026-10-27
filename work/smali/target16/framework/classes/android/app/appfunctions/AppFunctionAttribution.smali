.class public final Landroid/app/appfunctions/AppFunctionAttribution;
.super Ljava/lang/Object;
.source "AppFunctionAttribution.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/AppFunctionAttribution$Builder;,
        Landroid/app/appfunctions/AppFunctionAttribution$InteractionType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appfunctions/AppFunctionAttribution;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INTERACTION_TYPE_OTHER:I = 0x0

.field public static final blacklist INTERACTION_TYPE_USER_QUERY:I = 0x1

.field public static final blacklist INTERACTION_TYPE_USER_SCHEDULED:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "AppFunctionAttribution"


# instance fields
.field private final blacklist mCustomInteractionType:Ljava/lang/String;

.field private final blacklist mInteractionType:I

.field private final blacklist mInteractionUri:Landroid/net/Uri;

.field private final blacklist mThreadId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Landroid/app/appfunctions/AppFunctionAttribution$1;

    invoke-direct {v0}, Landroid/app/appfunctions/AppFunctionAttribution$1;-><init>()V

    sput-object v0, Landroid/app/appfunctions/AppFunctionAttribution;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mInteractionType:I

    .line 103
    if-nez p1, :cond_12

    if-eqz p2, :cond_a

    goto :goto_12

    .line 104
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must set customInteractionType when interactionType=INTERACTION_TYPE_OTHER"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_12
    :goto_12
    if-eqz p2, :cond_1f

    if-nez p1, :cond_17

    goto :goto_1f

    .line 108
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "customInteractionType is only allowed when interactionType=INTERACTION_TYPE_OTHER"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_1f
    :goto_1f
    iput-object p2, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mCustomInteractionType:Ljava/lang/String;

    .line 113
    iput-object p3, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mThreadId:Ljava/lang/String;

    .line 114
    iput-object p4, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mInteractionUri:Landroid/net/Uri;

    .line 115
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/appfunctions/AppFunctionAttribution-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/appfunctions/AppFunctionAttribution;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mInteractionType:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mCustomInteractionType:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mThreadId:Ljava/lang/String;

    .line 121
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mInteractionUri:Landroid/net/Uri;

    .line 122
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/appfunctions/AppFunctionAttribution-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/appfunctions/AppFunctionAttribution;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 166
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 167
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3b

    .line 168
    :cond_12
    check-cast p1, Landroid/app/appfunctions/AppFunctionAttribution;

    .line 169
    iget v2, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mInteractionType:I

    iget v3, p1, Landroid/app/appfunctions/AppFunctionAttribution;->mInteractionType:I

    if-ne v2, v3, :cond_39

    iget-object v2, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mCustomInteractionType:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/appfunctions/AppFunctionAttribution;->mCustomInteractionType:Ljava/lang/String;

    .line 170
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mThreadId:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/appfunctions/AppFunctionAttribution;->mThreadId:Ljava/lang/String;

    .line 171
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mInteractionUri:Landroid/net/Uri;

    iget-object p1, p1, Landroid/app/appfunctions/AppFunctionAttribution;->mInteractionUri:Landroid/net/Uri;

    .line 172
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_3a

    :cond_39
    move v0, v1

    .line 169
    :goto_3a
    return v0

    .line 167
    :cond_3b
    :goto_3b
    return v1
.end method

.method public blacklist getCustomInteractionType()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mCustomInteractionType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getInteractionType()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mInteractionType:I

    return v0
.end method

.method public blacklist getInteractionUri()Landroid/net/Uri;
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mInteractionUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getThreadId()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mThreadId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 177
    iget v0, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mInteractionType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mCustomInteractionType:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mThreadId:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mInteractionUri:Landroid/net/Uri;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppFunctionAttribution(interactionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mInteractionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",customInteractionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mCustomInteractionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",threadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mThreadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",interactionUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mInteractionUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 158
    iget v0, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mInteractionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mCustomInteractionType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mThreadId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionAttribution;->mInteractionUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 162
    return-void
.end method
