.class final Ldeveloper;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddDevSettPref(Ldmh;)V
    .locals 7

    iget-object v1, p0, Ldmh;->e:Ldhi;

    iget-object v2, p0, Ldmh;->c:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Ldmh;->b:Landroid/content/SharedPreferences;

    iget-object v4, p0, Ldmh;->d:Ljava/util/List;

    invoke-static {v1, v2, v3, v4}, Ldeveloper;->GetDevSettPref(Ldhi;Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;)V

    return-void
.end method

.method public static CountDevSettPreferences(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lsgcam/Shamim;->GetInstance:Ldit;

    invoke-virtual {v1}, Ldit;->v()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " options)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static GetDevSettPref(Ldhi;Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;)V
    .locals 11

    invoke-interface {p0}, Ldhi;->v()Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldhj;

    iget-object v5, v6, Ldhj;->a:Ljava/lang/String;

    move-object v9, v6

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v4 .. v9}, Ldeveloper;->GetSpecificPreference(Ljava/lang/Object;Ljava/lang/Object;Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static GetEditTextPrefFloat(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/Float;Landroid/content/SharedPreferences;Ljava/util/List;)V
    .locals 9

    new-instance v1, Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-interface {p3, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {p3, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v2, "Input float type value"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    const/16 v2, 0x3002

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    const-string v0, "preference_with_margin"

    const v6, 0x1

    invoke-static {v0, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setLayoutResource(I)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsgcam/Shamim;->PreventEmptySummery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v2, Ldeveloper$1;

    const/4 v4, 0x3

    invoke-direct {v2, p3, p1, v4}, Ldeveloper$1;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v2, Ldne;

    invoke-direct {v2, p1, v1}, Ldne;-><init>(Ljava/lang/String;Landroid/preference/Preference;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static GetEditTextPrefInt(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/SharedPreferences;Ljava/util/List;)V
    .locals 9

    new-instance v1, Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-interface {p3, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {p3, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    :cond_0
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v2, "Input Integer type value"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    const/16 v2, 0x1002

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    const-string v0, "preference_with_margin"

    const v6, 0x1

    invoke-static {v0, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setLayoutResource(I)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsgcam/Shamim;->PreventEmptySummery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v2, Ldeveloper$1;

    const/4 v4, 0x4

    invoke-direct {v2, p3, p1, v4}, Ldeveloper$1;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v2, Ldne;

    invoke-direct {v2, p1, v1}, Ldne;-><init>(Ljava/lang/String;Landroid/preference/Preference;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static GetEditTextPrefLong(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/Long;Landroid/content/SharedPreferences;Ljava/util/List;)V
    .locals 9

    new-instance v1, Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-interface {p3, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x0

    invoke-interface {p3, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    :cond_0
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v2, "Input long type value"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    const/16 v2, 0x3002

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    const-string v0, "preference_with_margin"

    const v6, 0x1

    invoke-static {v0, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setLayoutResource(I)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsgcam/Shamim;->PreventEmptySummery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v2, Ldeveloper$1;

    const/4 v4, 0x6

    invoke-direct {v2, p3, p1, v4}, Ldeveloper$1;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v2, Ldne;

    invoke-direct {v2, p1, v1}, Ldne;-><init>(Ljava/lang/String;Landroid/preference/Preference;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static GetEditTextString(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/util/List;)V
    .locals 9

    const/4 v0, 0x0

    new-instance v1, Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-interface {p3, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const-string v3, "Input string"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    const-string v2, "preference_with_margin"

    const v6, 0x1

    invoke-static {v2, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setLayoutResource(I)V

    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-static {p2}, Lsgcam/Shamim;->PreventEmptySummery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v2, Ldeveloper$1;

    const/4 v4, 0x5

    invoke-direct {v2, p3, p1, v4}, Ldeveloper$1;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v2, Ldne;

    invoke-direct {v2, p1, v1}, Ldne;-><init>(Ljava/lang/String;Landroid/preference/Preference;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static GetListPrefInt(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Set;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/util/Set;)V
    .locals 8

    const/4 v1, 0x0

    new-instance v3, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/CharSequence;

    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v0, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    aput-object v0, v4, v2

    :cond_1
    aput-object v0, v5, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v3, p1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-interface {p4, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p4, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    :cond_3
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {v3, p1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, p1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v1, "%s"

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const-string v1, "auto"

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    const-string v0, "preference_with_margin"

    const v6, 0x1

    invoke-static {v0, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setLayoutResource(I)V

    new-instance v0, Ldeveloper$1;

    const/4 v1, 0x7

    invoke-direct {v0, p4, p1, v1}, Ldeveloper$1;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v0, Ldne;

    invoke-direct {v0, p1, v3}, Ldne;-><init>(Ljava/lang/String;Landroid/preference/Preference;)V

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static GetLogOfPreferences(Ldhj;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Ldhj;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Ldhj;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldhj;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v3, p0, Ldhj;->a:Ljava/lang/String;

    return-object v3
.end method

.method public static GetSpecificPreference(Ljava/lang/Object;Ljava/lang/Object;Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/Object;)V
    .locals 10

    instance-of v1, p5, Ldhk;

    if-eqz v1, :cond_0

    check-cast p5, Ldhk;

    iget-object v0, p5, Ldhk;->c:Lmwn;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_0
    instance-of v2, p0, Ljava/lang/Integer;

    if-nez v2, :cond_2

    instance-of v2, p0, Ljava/lang/Float;

    if-nez v2, :cond_2

    instance-of v2, p0, Ljava/lang/Character;

    if-nez v2, :cond_2

    instance-of v2, p0, Ljava/lang/Long;

    if-nez v2, :cond_2

    instance-of v2, p0, Ljava/lang/Boolean;

    if-nez v2, :cond_2

    instance-of v2, p0, Ljava/lang/String;

    if-nez v2, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;

    invoke-static {p2, p1, p0, p3, p4}, Ldeveloper;->GetEditTextString(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/util/List;)V

    :cond_2
    :goto_0
    instance-of v1, p5, Ldhk;

    if-eqz v1, :cond_3

    check-cast p5, Ldhk;

    iget-object v0, p5, Ldhk;->c:Lmwn;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    const v3, 0x2

    if-le v2, v3, :cond_3

    check-cast p1, Ljava/lang/String;

    check-cast p0, Ljava/lang/Integer;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p0

    move-object v4, v0

    move-object v5, p3

    move-object v6, p4

    iget-object v7, p5, Ldhk;->d:Lmwn;

    invoke-static/range {v1 .. v7}, Ldeveloper;->GetListPrefInt(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Set;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_1

    :cond_3
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    instance-of v1, p5, Ldhk;

    if-eqz v1, :cond_4

    check-cast p5, Ldhk;

    iget-object v0, p5, Ldhk;->c:Lmwn;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    const v3, 0x2

    if-le v2, v3, :cond_4

    check-cast p1, Ljava/lang/String;

    check-cast p0, Ljava/lang/Integer;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p0

    move-object v4, v0

    move-object v5, p3

    move-object v6, p4

    iget-object v7, p5, Ldhk;->d:Lmwn;

    invoke-static/range {v1 .. v7}, Ldeveloper;->GetListPrefInt(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Set;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_1

    :cond_4
    check-cast p1, Ljava/lang/String;

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p2, p1, p0, p3, p4}, Ldeveloper;->GetEditTextPrefInt(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/SharedPreferences;Ljava/util/List;)V

    :goto_1
    goto :goto_2

    :cond_5
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_6

    check-cast p1, Ljava/lang/String;

    check-cast p0, Ljava/lang/Float;

    invoke-static {p2, p1, p0, p3, p4}, Ldeveloper;->GetEditTextPrefFloat(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/Float;Landroid/content/SharedPreferences;Ljava/util/List;)V

    goto :goto_2

    :cond_6
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_7

    check-cast p1, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;

    invoke-static {p2, p1, p0, p3, p4}, Ldeveloper;->GetEditTextString(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/util/List;)V

    goto :goto_2

    :cond_7
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    check-cast p1, Ljava/lang/String;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p2, p1, p0, p3, p4}, Ldeveloper;->GetSwitchPref(Landroid/preference/PreferenceScreen;Ljava/lang/String;ZLandroid/content/SharedPreferences;Ljava/util/List;)V

    goto :goto_2

    :cond_8
    instance-of v1, p0, Ljava/lang/Character;

    if-eqz v1, :cond_9

    check-cast p1, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;

    invoke-static {p2, p1, p0, p3, p4}, Ldeveloper;->GetEditTextString(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/util/List;)V

    goto :goto_2

    :cond_9
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_a

    check-cast p1, Ljava/lang/String;

    check-cast p0, Ljava/lang/Long;

    invoke-static {p2, p1, p0, p3, p4}, Ldeveloper;->GetEditTextPrefLong(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/Long;Landroid/content/SharedPreferences;Ljava/util/List;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public static GetSwitchPref(Landroid/preference/PreferenceScreen;Ljava/lang/String;ZLandroid/content/SharedPreferences;Ljava/util/List;)V
    .locals 9

    new-instance v1, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setKey(Ljava/lang/String;)V

    const-string v0, "preference_with_margin"

    const v6, 0x1

    invoke-static {v0, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setLayoutResource(I)V

    invoke-interface {p3, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {p3, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v2, Ldeveloper$1;

    const/4 v4, 0x2

    invoke-direct {v2, p3, p1, v4}, Ldeveloper$1;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v2, Ldne;

    invoke-direct {v2, p1, v1}, Ldne;-><init>(Ljava/lang/String;Landroid/preference/Preference;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
