<div class="page-header">
    <h3>
        <a href="#Admin">{{translate 'Administration'}}</a>
        &raquo
        <a href="#Admin/entityManager">{{translate 'Entity Manager' scope='Admin'}}</a>
        &raquo
        {{translate scope category='scopeNames'}}
        &raquo
        {{translate 'Relationships' scope='EntityManager'}}
    </h3>
</div>

<div class="button-container">
    <button class="btn btn-primary" data-action="createLink">{{translate 'Create Link' scope='Admin'}}</button>
</div>


<table class="table">
    {{#each linkDataList}}
    <tr data-scope="{{name}}">
        <td width="15%" align="left">
            {{translate entity category='scopeNames'}}
        </td>
        <td width="15%" align="left">
            {{nameForeign}}
        </td>
        <td width="10%" align="center">
            <strong>
            {{translateOption type field='linkType' scope='EntityManager'}}
            </strong>
        </td>
        <td width="15%" align="right">
            {{name}}
        </td>
        <td width="15%" align="right">
            {{translate foreignEntity category='scopeNames'}}
        </td>
        <td align="right" width="10%">
            {{#if isCustom}}
            <a href="javascript:" data-action="editLink" data-link="{{name}}">
                {{translate 'Edit'}}
            </a>
            {{/if}}
        </td>
        <td align="right" width="10%">
            {{#if isCustom}}
            <a href="javascript:" data-action="removeLink" data-link="{{name}}">
                {{translate 'Remove'}}
            </a>
            {{/if}}
        </td>
    </tr>
    {{/each}}
</table>

