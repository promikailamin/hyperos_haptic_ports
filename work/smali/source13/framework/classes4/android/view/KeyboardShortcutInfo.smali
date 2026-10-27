.class public final Landroid/view/KeyboardShortcutInfo;
.super Ljava/lang/Object;
.source "KeyboardShortcutInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mBaseCharacter:C

.field private blacklist mClassName:Ljava/lang/String;

.field private blacklist mCustomized:Z

.field private blacklist mEnable:Z

.field private blacklist mHistoryKeyCode:J

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private final greylist-max-o mKeycode:I

.field private final greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private final greylist-max-o mModifiers:I

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mShortcutKeyCode:J

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 272
    new-instance v0, Landroid/view/KeyboardShortcutInfo$1;

    invoke-direct {v0}, Landroid/view/KeyboardShortcutInfo$1;-><init>()V

    sput-object v0, Landroid/view/KeyboardShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JZI)V
    .registers 11
    .param p1, "shortcutKeyCode"    # J
    .param p3, "enable"    # Z
    .param p4, "type"    # I

    .line 103
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/KeyboardShortcutInfo;-><init>(JZIZ)V

    .line 104
    return-void
.end method

.method public constructor whitelist <init>(JZIZ)V
    .registers 7
    .param p1, "shortcutKeyCode"    # J
    .param p3, "enable"    # Z
    .param p4, "type"    # I
    .param p5, "customized"    # Z

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-wide p1, p0, Landroid/view/KeyboardShortcutInfo;->mShortcutKeyCode:J

    .line 109
    iput-boolean p3, p0, Landroid/view/KeyboardShortcutInfo;->mEnable:Z

    .line 110
    iput p4, p0, Landroid/view/KeyboardShortcutInfo;->mType:I

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    .line 112
    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 113
    const/4 v0, 0x0

    iput-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    .line 114
    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    .line 115
    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    .line 116
    iput-boolean p5, p0, Landroid/view/KeyboardShortcutInfo;->mCustomized:Z

    .line 117
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    .line 122
    const-class v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyboardShortcutInfo;->mShortcutKeyCode:J

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/KeyboardShortcutInfo;->mEnable:Z

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mType:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mClassName:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyboardShortcutInfo;->mHistoryKeyCode:J

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/KeyboardShortcutInfo;->mCustomized:Z

    .line 135
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/KeyboardShortcutInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/KeyboardShortcutInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;CI)V
    .registers 6
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "baseCharacter"    # C
    .param p3, "modifiers"    # I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    .line 94
    const/4 v0, 0x0

    if-eqz p2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    move v1, v0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 95
    iput-char p2, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    .line 96
    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    .line 97
    iput p3, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 99
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;II)V
    .registers 5
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "keycode"    # I
    .param p3, "modifiers"    # I

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 81
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V
    .registers 7
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "keycode"    # I
    .param p4, "modifiers"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    .line 62
    iput-object p2, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 63
    const/4 v0, 0x0

    iput-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    .line 64
    if-ltz p3, :cond_13

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    if-gt p3, v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 65
    iput p3, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    .line 66
    iput p4, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    .line 67
    return-void
.end method


# virtual methods
.method public blacklist clearIcon()V
    .registers 2

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 162
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBaseCharacter()C
    .registers 2

    .line 178
    iget-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    return v0
.end method

.method public whitelist getClassName()Ljava/lang/String;
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getHistoryKeyCode()J
    .registers 3

    .line 240
    iget-wide v0, p0, Landroid/view/KeyboardShortcutInfo;->mHistoryKeyCode:J

    return-wide v0
.end method

.method public greylist-max-o getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getKeycode()I
    .registers 2

    .line 170
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    return v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getModifiers()I
    .registers 2

    .line 188
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 231
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getShortcutKeyCode()J
    .registers 3

    .line 218
    iget-wide v0, p0, Landroid/view/KeyboardShortcutInfo;->mShortcutKeyCode:J

    return-wide v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 226
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mType:I

    return v0
.end method

.method public whitelist isActive()Z
    .registers 2

    .line 222
    iget-boolean v0, p0, Landroid/view/KeyboardShortcutInfo;->mEnable:Z

    return v0
.end method

.method public whitelist isCustomized()Z
    .registers 2

    .line 244
    iget-boolean v0, p0, Landroid/view/KeyboardShortcutInfo;->mCustomized:Z

    return v0
.end method

.method public whitelist setActive(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 206
    iput-boolean p1, p0, Landroid/view/KeyboardShortcutInfo;->mEnable:Z

    .line 207
    return-void
.end method

.method public whitelist setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 197
    iput-object p1, p0, Landroid/view/KeyboardShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 198
    iput-object p2, p0, Landroid/view/KeyboardShortcutInfo;->mClassName:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public whitelist setCustomized(Z)V
    .registers 2
    .param p1, "customized"    # Z

    .line 214
    iput-boolean p1, p0, Landroid/view/KeyboardShortcutInfo;->mCustomized:Z

    .line 215
    return-void
.end method

.method public whitelist setHistoryKeyCode(J)V
    .registers 3
    .param p1, "keyCode"    # J

    .line 193
    iput-wide p1, p0, Landroid/view/KeyboardShortcutInfo;->mHistoryKeyCode:J

    .line 194
    return-void
.end method

.method public whitelist setShortcutKeyCode(J)V
    .registers 3
    .param p1, "shortcutKeyCode"    # J

    .line 202
    iput-wide p1, p0, Landroid/view/KeyboardShortcutInfo;->mShortcutKeyCode:J

    .line 203
    return-void
.end method

.method public whitelist setType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 210
    iput p1, p0, Landroid/view/KeyboardShortcutInfo;->mType:I

    .line 211
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 256
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 258
    iget-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-wide v0, p0, Landroid/view/KeyboardShortcutInfo;->mShortcutKeyCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 263
    iget-boolean v0, p0, Landroid/view/KeyboardShortcutInfo;->mEnable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 264
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-wide v0, p0, Landroid/view/KeyboardShortcutInfo;->mHistoryKeyCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 268
    iget-boolean v0, p0, Landroid/view/KeyboardShortcutInfo;->mCustomized:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 270
    return-void
.end method
