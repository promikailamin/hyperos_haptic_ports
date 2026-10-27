.class public final Landroid/app/RemoteAction;
.super Ljava/lang/Object;
.source "RemoteAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RemoteAction"


# instance fields
.field private final greylist-max-o mActionIntent:Landroid/app/PendingIntent;

.field private final greylist-max-o mContentDescription:Ljava/lang/CharSequence;

.field private greylist-max-o mEnabled:Z

.field private final greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mShouldShowIcon:Z

.field private final greylist-max-o mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 175
    new-instance v0, Landroid/app/RemoteAction$1;

    invoke-direct {v0}, Landroid/app/RemoteAction$1;-><init>()V

    sput-object v0, Landroid/app/RemoteAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_19

    if-eqz p2, :cond_19

    if-eqz p3, :cond_19

    if-eqz p4, :cond_19

    .line 58
    iput-object p1, p0, Landroid/app/RemoteAction;->mIcon:Landroid/graphics/drawable/Icon;

    .line 59
    iput-object p2, p0, Landroid/app/RemoteAction;->mTitle:Ljava/lang/CharSequence;

    .line 60
    iput-object p3, p0, Landroid/app/RemoteAction;->mContentDescription:Ljava/lang/CharSequence;

    .line 61
    iput-object p4, p0, Landroid/app/RemoteAction;->mActionIntent:Landroid/app/PendingIntent;

    .line 62
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/app/RemoteAction;->mEnabled:Z

    .line 63
    iput-boolean p1, p0, Landroid/app/RemoteAction;->mShouldShowIcon:Z

    .line 64
    return-void

    .line 55
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expected icon, title, content description and action callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/RemoteAction;->mIcon:Landroid/graphics/drawable/Icon;

    .line 45
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/RemoteAction;->mTitle:Ljava/lang/CharSequence;

    .line 46
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/RemoteAction;->mContentDescription:Ljava/lang/CharSequence;

    .line 47
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/RemoteAction;->mActionIntent:Landroid/app/PendingIntent;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/RemoteAction;->mEnabled:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/app/RemoteAction;->mShouldShowIcon:Z

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist clone()Landroid/app/RemoteAction;
    .registers 6

    .line 124
    new-instance v0, Landroid/app/RemoteAction;

    iget-object v1, p0, Landroid/app/RemoteAction;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v2, p0, Landroid/app/RemoteAction;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/RemoteAction;->mContentDescription:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/app/RemoteAction;->mActionIntent:Landroid/app/PendingIntent;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 125
    iget-boolean v1, p0, Landroid/app/RemoteAction;->mEnabled:Z

    invoke-virtual {v0, v1}, Landroid/app/RemoteAction;->setEnabled(Z)V

    .line 126
    iget-boolean v1, p0, Landroid/app/RemoteAction;->mShouldShowIcon:Z

    invoke-virtual {v0, v1}, Landroid/app/RemoteAction;->setShouldShowIcon(Z)V

    .line 127
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Landroid/app/RemoteAction;->clone()Landroid/app/RemoteAction;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 165
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "title="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/app/RemoteAction;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " enabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Landroid/app/RemoteAction;->mEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " contentDescription="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/app/RemoteAction;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " icon="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/app/RemoteAction;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " action="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/app/RemoteAction;->mActionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " shouldShowIcon="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Landroid/app/RemoteAction;->mShouldShowIcon:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 173
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 132
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 133
    :cond_4
    instance-of v1, p1, Landroid/app/RemoteAction;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 134
    :cond_a
    check-cast p1, Landroid/app/RemoteAction;

    .line 135
    iget-boolean v1, p0, Landroid/app/RemoteAction;->mEnabled:Z

    iget-boolean v3, p1, Landroid/app/RemoteAction;->mEnabled:Z

    if-ne v1, v3, :cond_41

    iget-boolean v1, p0, Landroid/app/RemoteAction;->mShouldShowIcon:Z

    iget-boolean v3, p1, Landroid/app/RemoteAction;->mShouldShowIcon:Z

    if-ne v1, v3, :cond_41

    iget-object v1, p0, Landroid/app/RemoteAction;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Landroid/app/RemoteAction;->mIcon:Landroid/graphics/drawable/Icon;

    .line 137
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Landroid/app/RemoteAction;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/app/RemoteAction;->mTitle:Ljava/lang/CharSequence;

    .line 138
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Landroid/app/RemoteAction;->mContentDescription:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/app/RemoteAction;->mContentDescription:Ljava/lang/CharSequence;

    .line 139
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Landroid/app/RemoteAction;->mActionIntent:Landroid/app/PendingIntent;

    iget-object p1, p1, Landroid/app/RemoteAction;->mActionIntent:Landroid/app/PendingIntent;

    .line 140
    invoke-virtual {v1, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    goto :goto_42

    :cond_41
    move v0, v2

    .line 135
    :goto_42
    return v0
.end method

.method public whitelist getActionIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/app/RemoteAction;->mActionIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/app/RemoteAction;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/app/RemoteAction;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/app/RemoteAction;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 145
    iget-object v0, p0, Landroid/app/RemoteAction;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v1, p0, Landroid/app/RemoteAction;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/app/RemoteAction;->mContentDescription:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/RemoteAction;->mActionIntent:Landroid/app/PendingIntent;

    iget-boolean v4, p0, Landroid/app/RemoteAction;->mEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, p0, Landroid/app/RemoteAction;->mShouldShowIcon:Z

    .line 146
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 145
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Landroid/app/RemoteAction;->mEnabled:Z

    return v0
.end method

.method public whitelist setEnabled(Z)V
    .registers 2

    .line 70
    iput-boolean p1, p0, Landroid/app/RemoteAction;->mEnabled:Z

    .line 71
    return-void
.end method

.method public whitelist setShouldShowIcon(Z)V
    .registers 2

    .line 84
    iput-boolean p1, p0, Landroid/app/RemoteAction;->mShouldShowIcon:Z

    .line 85
    return-void
.end method

.method public whitelist shouldShowIcon()Z
    .registers 2

    .line 91
    iget-boolean v0, p0, Landroid/app/RemoteAction;->mShouldShowIcon:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 156
    iget-object v0, p0, Landroid/app/RemoteAction;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 157
    iget-object v0, p0, Landroid/app/RemoteAction;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 158
    iget-object v0, p0, Landroid/app/RemoteAction;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 159
    iget-object v0, p0, Landroid/app/RemoteAction;->mActionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 160
    iget-boolean p2, p0, Landroid/app/RemoteAction;->mEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 161
    iget-boolean p2, p0, Landroid/app/RemoteAction;->mShouldShowIcon:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 162
    return-void
.end method
