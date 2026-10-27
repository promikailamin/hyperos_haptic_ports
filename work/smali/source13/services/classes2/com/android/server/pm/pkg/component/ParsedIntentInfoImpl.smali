.class public Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
.super Ljava/lang/Object;
.source "ParsedIntentInfoImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHasDefault:Z

.field private mIcon:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLabelRes:I

.field private mNonLocalizedLabel:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 158
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mIntentFilter:Landroid/content/IntentFilter;

    .line 46
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mIntentFilter:Landroid/content/IntentFilter;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 140
    .local v0, "flg":B
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 141
    .local v1, "hasDefault":Z
    :goto_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .local v2, "labelRes":I
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-nez v3, :cond_20

    move-object v3, v4

    goto :goto_24

    :cond_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    .line 143
    .local v3, "nonLocalizedLabel":Ljava/lang/CharSequence;
    :goto_24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 144
    .local v5, "icon":I
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    .line 146
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    iput-boolean v1, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mHasDefault:Z

    .line 147
    iput v2, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mLabelRes:I

    .line 148
    iput-object v3, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 149
    iput v5, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mIcon:I

    .line 150
    iput-object v6, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mIntentFilter:Landroid/content/IntentFilter;

    .line 151
    const-class v7, Landroid/annotation/NonNull;

    invoke-static {v7, v4, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()I
    .registers 2

    .line 80
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mIcon:I

    return v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public getLabelRes()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mLabelRes:I

    return v0
.end method

.method public getNonLocalizedLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isHasDefault()Z
    .registers 2

    .line 65
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mHasDefault:Z

    return v0
.end method

.method public setHasDefault(Z)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mHasDefault:Z

    .line 91
    return-object p0
.end method

.method public setIcon(I)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
    .registers 2
    .param p1, "value"    # I

    .line 108
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mIcon:I

    .line 109
    return-object p0
.end method

.method public setLabelRes(I)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
    .registers 2
    .param p1, "value"    # I

    .line 96
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mLabelRes:I

    .line 97
    return-object p0
.end method

.method public setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 102
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 103
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "flg":B
    iget-boolean v1, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mHasDefault:Z

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 120
    :cond_8
    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 121
    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 122
    iget v1, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mLabelRes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1e

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 124
    :cond_1e
    iget v1, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mIcon:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 126
    return-void
.end method
