.class public Landroid/content/ClipboardRuleInfo;
.super Ljava/lang/Object;
.source "ClipboardRuleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/ClipboardRuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_CLICK_INFO:I = 0x2

.field public static final blacklist TYPE_RULE_INFO:I = 0x1

.field public static final blacklist TYPE_SENSITIVE_INFO:I = 0x3


# instance fields
.field private blacklist mPkgName:Ljava/lang/String;

.field private blacklist mRuleList:Ljava/util/List;
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

    .line 62
    new-instance v0, Landroid/content/ClipboardRuleInfo$1;

    invoke-direct {v0}, Landroid/content/ClipboardRuleInfo$1;-><init>()V

    sput-object v0, Landroid/content/ClipboardRuleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ClipboardRuleInfo;->mPkgName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/ClipboardRuleInfo;->mType:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ClipboardRuleInfo;->mRuleList:Ljava/util/List;

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Landroid/content/ClipboardRuleInfo;->mPkgName:Ljava/lang/String;

    .line 24
    iput p2, p0, Landroid/content/ClipboardRuleInfo;->mType:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ClipboardRuleInfo;->mRuleList:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public blacklist addRuleInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "rule"    # Ljava/lang/String;

    .line 29
    iget-object v0, p0, Landroid/content/ClipboardRuleInfo;->mRuleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPkgName()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Landroid/content/ClipboardRuleInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRuleInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Landroid/content/ClipboardRuleInfo;->mRuleList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 37
    iget v0, p0, Landroid/content/ClipboardRuleInfo;->mType:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 52
    iget-object v0, p0, Landroid/content/ClipboardRuleInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget v0, p0, Landroid/content/ClipboardRuleInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Landroid/content/ClipboardRuleInfo;->mRuleList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 55
    return-void
.end method
