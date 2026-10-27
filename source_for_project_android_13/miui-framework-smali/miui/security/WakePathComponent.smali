.class public Lmiui/security/WakePathComponent;
.super Ljava/lang/Object;
.source "WakePathComponent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/security/WakePathComponent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist WAKE_PATH_COMPONENT_ACTIVITY:I = 0x3

.field public static final blacklist WAKE_PATH_COMPONENT_PROVIDER:I = 0x4

.field public static final blacklist WAKE_PATH_COMPONENT_RECEIVER:I = 0x1

.field public static final blacklist WAKE_PATH_COMPONENT_SERVICE:I = 0x2


# instance fields
.field private blacklist mClassname:Ljava/lang/String;

.field private blacklist mIntentActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lmiui/security/WakePathComponent$1;

    invoke-direct {v0}, Lmiui/security/WakePathComponent$1;-><init>()V

    sput-object v0, Lmiui/security/WakePathComponent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/security/WakePathComponent;->mIntentActions:Ljava/util/List;

    .line 33
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    .local p3, "intentActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/security/WakePathComponent;->mIntentActions:Ljava/util/List;

    .line 27
    iput p1, p0, Lmiui/security/WakePathComponent;->mType:I

    .line 28
    iput-object p2, p0, Lmiui/security/WakePathComponent;->mClassname:Ljava/lang/String;

    .line 29
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/security/WakePathComponent;->mIntentActions:Ljava/util/List;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/security/WakePathComponent;->mType:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/WakePathComponent;->mClassname:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lmiui/security/WakePathComponent;->mIntentActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 61
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lmiui/security/WakePathComponent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/security/WakePathComponent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public blacklist addIntentAction(Ljava/lang/String;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lmiui/security/WakePathComponent;->mIntentActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getClassname()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lmiui/security/WakePathComponent;->mClassname:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIntentActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lmiui/security/WakePathComponent;->mIntentActions:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 73
    iget v0, p0, Lmiui/security/WakePathComponent;->mType:I

    return v0
.end method

.method public blacklist setClassname(Ljava/lang/String;)V
    .registers 2
    .param p1, "classname"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lmiui/security/WakePathComponent;->mClassname:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public blacklist setType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 69
    iput p1, p0, Lmiui/security/WakePathComponent;->mType:I

    .line 70
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakePathComponent: mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/security/WakePathComponent;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mClassname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/WakePathComponent;->mClassname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIntentActions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/WakePathComponent;->mIntentActions:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 42
    iget v0, p0, Lmiui/security/WakePathComponent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Lmiui/security/WakePathComponent;->mClassname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lmiui/security/WakePathComponent;->mIntentActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 45
    return-void
.end method
