.class public Lmiui/smartpower/MultiTaskActionManager$ActionInfo;
.super Ljava/lang/Object;
.source "MultiTaskActionManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/smartpower/MultiTaskActionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/smartpower/MultiTaskActionManager$ActionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDrawnTids:[I

.field private blacklist mType:I

.field private blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 150
    new-instance v0, Lmiui/smartpower/MultiTaskActionManager$ActionInfo$1;

    invoke-direct {v0}, Lmiui/smartpower/MultiTaskActionManager$ActionInfo$1;-><init>()V

    sput-object v0, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II[I)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "uid"    # I
    .param p3, "drawnTids"    # [I

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;->mType:I

    .line 128
    iput p2, p0, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;->mUid:I

    .line 129
    iput-object p3, p0, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;->mDrawnTids:[I

    .line 130
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;->mType:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;->mUid:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;->mDrawnTids:[I

    .line 136
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDrawnTids()[I
    .registers 2

    .line 147
    iget-object v0, p0, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;->mDrawnTids:[I

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 139
    iget v0, p0, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;->mType:I

    return v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 143
    iget v0, p0, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;->mUid:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionInfo{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;->mType:I

    .line 177
    invoke-static {v1}, Lmiui/smartpower/MultiTaskActionManager;->actionTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", drawnTids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;->mDrawnTids:[I

    .line 179
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 164
    iget v0, p0, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;->mDrawnTids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 167
    return-void
.end method
