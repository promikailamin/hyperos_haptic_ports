.class public Lcom/xiaomi/mirror/MirrorMenu;
.super Ljava/lang/Object;
.source "MirrorMenu.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/MirrorMenu$PcOpenBuilder;,
        Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;,
        Lcom/xiaomi/mirror/MirrorMenu$Builder;,
        Lcom/xiaomi/mirror/MirrorMenu$Callback;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/mirror/MirrorMenu;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_COMMON:I = 0x0

.field public static final blacklist TYPE_NEW_DISPLAY_OPEN:I = 0x1

.field public static final blacklist TYPE_PC_OPEN:I = 0x2


# instance fields
.field private blacklist callback:Lcom/xiaomi/mirror/MirrorMenu$Callback;

.field private blacklist extra:Ljava/lang/String;

.field private blacklist label:Ljava/lang/CharSequence;

.field private blacklist pi:Landroid/app/PendingIntent;

.field private blacklist type:I

.field private blacklist uri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Lcom/xiaomi/mirror/MirrorMenu$1;

    invoke-direct {v0}, Lcom/xiaomi/mirror/MirrorMenu$1;-><init>()V

    sput-object v0, Lcom/xiaomi/mirror/MirrorMenu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/xiaomi/mirror/MirrorMenu;->type:I

    .line 46
    iput-object p2, p0, Lcom/xiaomi/mirror/MirrorMenu;->label:Ljava/lang/CharSequence;

    .line 47
    iput-object p3, p0, Lcom/xiaomi/mirror/MirrorMenu;->pi:Landroid/app/PendingIntent;

    .line 48
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Lcom/xiaomi/mirror/MirrorMenu-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/mirror/MirrorMenu;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/CharSequence;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "extra"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/xiaomi/mirror/MirrorMenu;->type:I

    .line 55
    iput-object p2, p0, Lcom/xiaomi/mirror/MirrorMenu;->label:Ljava/lang/CharSequence;

    .line 56
    iput-object p3, p0, Lcom/xiaomi/mirror/MirrorMenu;->uri:Landroid/net/Uri;

    .line 57
    iput-object p4, p0, Lcom/xiaomi/mirror/MirrorMenu;->extra:Ljava/lang/String;

    .line 58
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/CharSequence;Landroid/net/Uri;Ljava/lang/String;Lcom/xiaomi/mirror/MirrorMenu-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mirror/MirrorMenu;-><init>(ILjava/lang/CharSequence;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/CharSequence;Lcom/xiaomi/mirror/MirrorMenu$Callback;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lcom/xiaomi/mirror/MirrorMenu$Callback;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/xiaomi/mirror/MirrorMenu;->type:I

    .line 37
    iput-object p2, p0, Lcom/xiaomi/mirror/MirrorMenu;->label:Ljava/lang/CharSequence;

    .line 38
    iput-object p3, p0, Lcom/xiaomi/mirror/MirrorMenu;->callback:Lcom/xiaomi/mirror/MirrorMenu$Callback;

    .line 39
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/CharSequence;Lcom/xiaomi/mirror/MirrorMenu$Callback;Lcom/xiaomi/mirror/MirrorMenu-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/mirror/MirrorMenu;-><init>(ILjava/lang/CharSequence;Lcom/xiaomi/mirror/MirrorMenu$Callback;)V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->type:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->label:Ljava/lang/CharSequence;

    .line 63
    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->pi:Landroid/app/PendingIntent;

    .line 64
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->uri:Landroid/net/Uri;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->extra:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getExtra()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getListener()Lcom/xiaomi/mirror/MirrorMenu$Callback;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->callback:Lcom/xiaomi/mirror/MirrorMenu$Callback;

    return-object v0
.end method

.method public blacklist getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->pi:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->type:I

    return v0
.end method

.method public blacklist getUri()Landroid/net/Uri;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist needCallRemote()Z
    .registers 4

    .line 119
    iget v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MirrorMenu{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/mirror/MirrorMenu;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorMenu;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorMenu;->callback:Lcom/xiaomi/mirror/MirrorMenu$Callback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorMenu;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorMenu;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorMenu;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 70
    iget v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->label:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->pi:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 73
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 74
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->extra:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 75
    return-void
.end method
