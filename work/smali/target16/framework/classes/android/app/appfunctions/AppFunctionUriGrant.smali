.class public final Landroid/app/appfunctions/AppFunctionUriGrant;
.super Ljava/lang/Object;
.source "AppFunctionUriGrant.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/AppFunctionUriGrant$GrantUriMode;
    }
.end annotation


# static fields
.field private static final blacklist ALLOWED_MODE_FLAG_MASK:I = 0x83

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appfunctions/AppFunctionUriGrant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mModeFlags:I

.field private final blacklist mUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Landroid/app/appfunctions/AppFunctionUriGrant$1;

    invoke-direct {v0}, Landroid/app/appfunctions/AppFunctionUriGrant$1;-><init>()V

    sput-object v0, Landroid/app/appfunctions/AppFunctionUriGrant;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/Uri;I)V
    .registers 3

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionUriGrant;->mUri:Landroid/net/Uri;

    .line 120
    and-int/lit16 p1, p2, -0x84

    if-nez p1, :cond_20

    .line 126
    invoke-static {p2}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 131
    iput p2, p0, Landroid/app/appfunctions/AppFunctionUriGrant;->mModeFlags:I

    .line 132
    return-void

    .line 127
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must set either FLAG_GRANT_READ_URI_PERMISSION or FLAG_GRANT_WRITE_URI_PERMISSION to specify the access mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Contains invalid flags: Allowed flags are FLAG_GRANT_READ_URI_PERMISSION, FLAG_GRANT_WRITE_URI_PERMISSION and FLAG_GRANT_PREFIX_URI_PERMISSION"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 148
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 149
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 150
    :cond_12
    check-cast p1, Landroid/app/appfunctions/AppFunctionUriGrant;

    .line 151
    iget v2, p0, Landroid/app/appfunctions/AppFunctionUriGrant;->mModeFlags:I

    iget v3, p1, Landroid/app/appfunctions/AppFunctionUriGrant;->mModeFlags:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Landroid/app/appfunctions/AppFunctionUriGrant;->mUri:Landroid/net/Uri;

    iget-object p1, p1, Landroid/app/appfunctions/AppFunctionUriGrant;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    .line 149
    :cond_27
    :goto_27
    return v1
.end method

.method public blacklist getModeFlags()I
    .registers 2

    .line 143
    iget v0, p0, Landroid/app/appfunctions/AppFunctionUriGrant;->mModeFlags:I

    return v0
.end method

.method public blacklist getUri()Landroid/net/Uri;
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionUriGrant;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 156
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionUriGrant;->mUri:Landroid/net/Uri;

    iget v1, p0, Landroid/app/appfunctions/AppFunctionUriGrant;->mModeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppFunctionGrantUri(uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionUriGrant;->mUri:Landroid/net/Uri;

    .line 164
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",modeFlags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/appfunctions/AppFunctionUriGrant;->mModeFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 173
    iget-object p2, p0, Landroid/app/appfunctions/AppFunctionUriGrant;->mUri:Landroid/net/Uri;

    invoke-static {p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 174
    iget p2, p0, Landroid/app/appfunctions/AppFunctionUriGrant;->mModeFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    return-void
.end method
