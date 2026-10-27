.class public Landroid/gamepad/BsGameKeyMapList;
.super Ljava/lang/Object;
.source "BsGameKeyMapList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/gamepad/BsGameKeyMapList;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MODE_BOOST:I = 0x2

.field public static final whitelist MODE_NOFICATION:I = 0x4

.field public static final whitelist MODE_NORMAL:I = 0x0

.field public static final whitelist MODE_POLLING:I = 0x1

.field public static final whitelist MODE_REPEAT:I = 0x5

.field public static final whitelist MODE_SPLIT:I = 0x3

.field public static final whitelist MODE_SPLIT_LIST_SIZE:I = 0x2

.field public static final whitelist MOUSE_HORIZONTAL_SENSITIVITY:Ljava/lang/String; = "mouse_horizontal_sensitivity"

.field public static final whitelist MOUSE_VERTICAL_SENSITIVITY:Ljava/lang/String; = "mouse_vertical_sensitivity"

.field public static final whitelist MULTI_EVENT_MODE:Ljava/lang/String; = "multi_mode"

.field public static final whitelist REPEAT_DEFAULT_DELAY:I = 0xf

.field public static final whitelist REPEAT_DELAY:Ljava/lang/String; = "repeat_delay"

.field public static final whitelist REPEAT_MAX_DELAY:I = 0x3e7

.field public static final whitelist REPEAT_MODE_DOWN_TRIGGER:I = 0x0

.field public static final whitelist REPEAT_MODE_INVALUE_TRIGGER:I = -0x1

.field public static final whitelist REPEAT_MODE_UP_TRIGGER:I = 0x1

.field public static final whitelist REPEAT_RAMDOM_MILLIS:Ljava/lang/String; = "repeat_random_millis"

.field public static final whitelist REPEAT_RAMDOM_RADIUS:Ljava/lang/String; = "repeat_random_radius"

.field public static final whitelist REPEAT_RANDOM_DEFAULT_MILLIS:I = 0xa

.field public static final whitelist REPEAT_RANDOM_DEFAULT_RADIUS:I = 0x3

.field public static final whitelist REPEAT_TRIGGER:Ljava/lang/String; = "repeat_trigger"


# instance fields
.field private blacklist mExtra:Landroid/os/Bundle;

.field private blacklist mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/gamepad/BsGameKeyMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 145
    new-instance v0, Landroid/gamepad/BsGameKeyMapList$1;

    invoke-direct {v0}, Landroid/gamepad/BsGameKeyMapList$1;-><init>()V

    sput-object v0, Landroid/gamepad/BsGameKeyMapList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mList:Ljava/util/List;

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mExtra:Landroid/os/Bundle;

    .line 52
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mList:Ljava/util/List;

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mExtra:Landroid/os/Bundle;

    .line 47
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/gamepad/BsGameKeyMap;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/gamepad/BsGameKeyMap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/gamepad/BsGameKeyMapList;->mList:Ljava/util/List;

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mExtra:Landroid/os/Bundle;

    .line 57
    return-void
.end method


# virtual methods
.method public whitelist add(Landroid/gamepad/BsGameKeyMap;)Z
    .registers 3
    .param p1, "keyMap"    # Landroid/gamepad/BsGameKeyMap;

    .line 76
    iget-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mList:Ljava/util/List;

    if-nez v0, :cond_6

    .line 77
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist get(I)Landroid/gamepad/BsGameKeyMap;
    .registers 3
    .param p1, "index"    # I

    .line 68
    iget-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mList:Ljava/util/List;

    if-nez v0, :cond_6

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gamepad/BsGameKeyMap;

    return-object v0
.end method

.method public whitelist getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/gamepad/BsGameKeyMap;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMode()I
    .registers 4

    .line 92
    iget-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mExtra:Landroid/os/Bundle;

    const-string v1, "multi_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getRepeatDelay()I
    .registers 4

    .line 116
    iget-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mExtra:Landroid/os/Bundle;

    const-string v1, "repeat_delay"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getRepeatRandomMillis()I
    .registers 4

    .line 124
    iget-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mExtra:Landroid/os/Bundle;

    const-string v1, "repeat_random_millis"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getRepeatRandomRadius()I
    .registers 4

    .line 132
    iget-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mExtra:Landroid/os/Bundle;

    const-string v1, "repeat_random_radius"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getTriggerMode()I
    .registers 4

    .line 100
    iget-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mExtra:Landroid/os/Bundle;

    const-string v1, "repeat_trigger"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist setMode(I)V
    .registers 4
    .param p1, "value"    # I

    .line 88
    iget-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mExtra:Landroid/os/Bundle;

    const-string v1, "multi_mode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method public whitelist setRepeatDelay(I)V
    .registers 4
    .param p1, "value"    # I

    .line 104
    const/16 v0, 0xf

    if-ge p1, v0, :cond_6

    .line 105
    const/16 p1, 0xf

    .line 108
    :cond_6
    const/16 v0, 0x3e7

    if-le p1, v0, :cond_c

    .line 109
    const/16 p1, 0x3e7

    .line 112
    :cond_c
    iget-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mExtra:Landroid/os/Bundle;

    const-string v1, "repeat_delay"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    return-void
.end method

.method public whitelist setRepeatRandomMillis(I)V
    .registers 4
    .param p1, "value"    # I

    .line 120
    iget-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mExtra:Landroid/os/Bundle;

    const-string v1, "repeat_random_millis"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    return-void
.end method

.method public whitelist setRepeatRandomRadius(I)V
    .registers 4
    .param p1, "value"    # I

    .line 128
    iget-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mExtra:Landroid/os/Bundle;

    const-string v1, "repeat_random_radius"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    return-void
.end method

.method public whitelist setTriggerMode(I)V
    .registers 4
    .param p1, "value"    # I

    .line 96
    iget-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mExtra:Landroid/os/Bundle;

    const-string v1, "repeat_trigger"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    return-void
.end method

.method public whitelist size()I
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mList:Ljava/util/List;

    if-nez v0, :cond_6

    .line 61
    const/4 v0, 0x0

    return v0

    .line 64
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/gamepad/BsGameKeyMapList;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "str":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    iget-object v3, p0, Landroid/gamepad/BsGameKeyMapList;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/gamepad/BsGameKeyMapList;->mList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 142
    .end local v2    # "i":I
    :cond_4f
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 164
    iget-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 165
    iget-object v0, p0, Landroid/gamepad/BsGameKeyMapList;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 166
    return-void
.end method
