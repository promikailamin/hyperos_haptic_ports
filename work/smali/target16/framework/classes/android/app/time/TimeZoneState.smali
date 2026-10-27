.class public final Landroid/app/time/TimeZoneState;
.super Ljava/lang/Object;
.source "TimeZoneState.java"

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
            "Landroid/app/time/TimeZoneState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mUserShouldConfirmId:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneState;
    .registers 1

    invoke-static {p0}, Landroid/app/time/TimeZoneState;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneState;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Landroid/app/time/TimeZoneState$1;

    invoke-direct {v0}, Landroid/app/time/TimeZoneState$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeZoneState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/time/TimeZoneState;->mId:Ljava/lang/String;

    .line 61
    iput-boolean p2, p0, Landroid/app/time/TimeZoneState;->mUserShouldConfirmId:Z

    .line 62
    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneState;
    .registers 3

    .line 65
    invoke-virtual {p0}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    .line 67
    new-instance v1, Landroid/app/time/TimeZoneState;

    invoke-direct {v1, v0, p0}, Landroid/app/time/TimeZoneState;-><init>(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public static blacklist parseCommandLineArgs(Landroid/os/ShellCommand;)Landroid/app/time/TimeZoneState;
    .registers 5

    .line 79
    nop

    .line 80
    const/4 v0, 0x0

    move-object v1, v0

    .line 82
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 83
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_74

    :cond_10
    goto :goto_25

    :sswitch_11
    const-string v3, "--zone_id"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    goto :goto_26

    :sswitch_1b
    const-string v3, "--user_should_confirm_id"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    goto :goto_26

    :goto_25
    const/4 v3, -0x1

    :goto_26
    packed-switch v3, :pswitch_data_7e

    .line 93
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :pswitch_42
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 90
    goto :goto_54

    .line 85
    :pswitch_4f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 86
    nop

    .line 95
    :goto_54
    goto :goto_3

    .line 97
    :cond_55
    if-eqz v0, :cond_6b

    .line 100
    if-eqz v1, :cond_63

    .line 103
    new-instance p0, Landroid/app/time/TimeZoneState;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/app/time/TimeZoneState;-><init>(Ljava/lang/String;Z)V

    return-object p0

    .line 101
    :cond_63
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No userShouldConfirmId specified."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_6b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No zoneId specified."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_74
    .sparse-switch
        -0x768084ce -> :sswitch_1b
        0x4bfc04ee -> :sswitch_11
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_42
    .end packed-switch
.end method

.method public static blacklist printCommandLineOpts(Ljava/io/PrintWriter;)V
    .registers 3

    .line 108
    const-string v0, "TimeZoneState options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const-string v0, "  --zone_id {<Olson ID>}"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v0, "  --user_should_confirm_id {true|false}"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "See "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/app/time/TimeZoneState;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for more information"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 131
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 132
    return v0

    .line 134
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 137
    :cond_12
    check-cast p1, Landroid/app/time/TimeZoneState;

    .line 138
    iget-object v2, p0, Landroid/app/time/TimeZoneState;->mId:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/time/TimeZoneState;->mId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-boolean v2, p0, Landroid/app/time/TimeZoneState;->mUserShouldConfirmId:Z

    iget-boolean p1, p1, Landroid/app/time/TimeZoneState;->mUserShouldConfirmId:Z

    if-ne v2, p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    .line 135
    :cond_27
    :goto_27
    return v1
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/app/time/TimeZoneState;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUserShouldConfirmId()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Landroid/app/time/TimeZoneState;->mUserShouldConfirmId:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 144
    iget-object v0, p0, Landroid/app/time/TimeZoneState;->mId:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/app/time/TimeZoneState;->mUserShouldConfirmId:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneState{mZoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeZoneState;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserShouldConfirmId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/time/TimeZoneState;->mUserShouldConfirmId:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 72
    iget-object p2, p0, Landroid/app/time/TimeZoneState;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 73
    iget-boolean p2, p0, Landroid/app/time/TimeZoneState;->mUserShouldConfirmId:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 74
    return-void
.end method
