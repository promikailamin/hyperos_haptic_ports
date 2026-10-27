.class public Lcom/xiaomi/aiinput/AiTextInfo;
.super Ljava/lang/Object;
.source "AiTextInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/aiinput/AiTextInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContextName:Ljava/lang/String;

.field private blacklist mCursorIndex:I

.field private blacklist mHasSelection:Z

.field private blacklist mPkgName:Ljava/lang/String;

.field private blacklist mText:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Lcom/xiaomi/aiinput/AiTextInfo$1;

    invoke-direct {v0}, Lcom/xiaomi/aiinput/AiTextInfo$1;-><init>()V

    sput-object v0, Lcom/xiaomi/aiinput/AiTextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mText:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mHasSelection:Z

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mCursorIndex:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mPkgName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mContextName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "hasSelection"    # Z
    .param p3, "cursorIndex"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "context"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mText:Ljava/lang/String;

    .line 16
    iput-boolean p2, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mHasSelection:Z

    .line 17
    iput p3, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mCursorIndex:I

    .line 18
    iput-object p4, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mPkgName:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mContextName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getContextName()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mContextName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCursorIndex()I
    .registers 2

    .line 73
    iget v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mCursorIndex:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist hasSelection()Z
    .registers 2

    .line 69
    iget-boolean v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mHasSelection:Z

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mText:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mHasSelection:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mCursorIndex:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mPkgName:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mContextName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AiTextInfo{text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mHasSelection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cursorIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mCursorIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mContextName:Ljava/lang/String;

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

    .line 32
    iget-object v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-boolean v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mHasSelection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 34
    iget v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mCursorIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/xiaomi/aiinput/AiTextInfo;->mContextName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    return-void
.end method
